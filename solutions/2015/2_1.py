wrapping_paper = 0


def process(buff: str) -> None:
    global wrapping_paper
    l, w, h = tuple(int(dim) for dim in buff.split("x"))
    surface_areas = (l * w, w * h, h * l)
    wrapping_paper += 2 * sum(surface_areas) + min(surface_areas)


def solution() -> None:
    print(wrapping_paper)
