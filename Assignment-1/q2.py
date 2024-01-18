import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp
from scipy.integrate._ivp.ivp import OdeResult


class Plotter:
    def __init__(self, r: range, x_start: float, y_start: float) -> None:
        self.t_span = (r.start, r.stop)
        self.t_eval = np.linspace(r.start, r.stop, r.step)
        self.initial_conditions = [x_start, 0.0, y_start, 0.0]  # x, vx, y, vy at time 0

    @staticmethod
    def equations(_, y) -> list[np.float64]:
        x, v1, y, v2 = y
        return [
            v1,
            ((-2 * k) * x + k * y) / m,
            v2,
            ((-2 * k) * y + k * x) / m,
        ]

    def solve(self) -> OdeResult:
        return solve_ivp(
            self.equations,
            self.t_span,
            self.initial_conditions,
            args=(),
            t_eval=self.t_eval,
        )

    def plot(self) -> None:
        sol = self.solve()
        x1, _, x2, _ = sol.y
        plt.plot(x1, label="Mass 1")
        plt.plot(x2, label="Mass 2")
        plt.xlabel("time")
        plt.ylabel("displacement")
        plt.legend()
        plt.show()


if __name__ == "__main__":
    m = 1.0
    k = 1.0
    C = 13.0
    p = Plotter(range(0, 20, 1000), -C / 2, -C)
    p.plot()
