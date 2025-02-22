from dataclasses import dataclass
from typing import cast

from typing_extensions import Literal


@dataclass
class BlockType:
    RESOURCE: Literal["resource"] = "resource"

    def get(self, attr_name: str) -> str:
        return cast(str, getattr(self, attr_name.upper()))
