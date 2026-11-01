import "./styles/main.css";
import { ferrisSvg } from "./ui/components/ferris";
import { h } from "./ui/dom";

// Placeholder until the studio screen lands (see design/game-brief.md).
const root = document.getElementById("app");
if (!root) throw new Error("Missing #app element");
root.append(
  h("main", { class: "screen" }, ferrisSvg(96), h("h1", {}, "Rusty Studio"), h("p", {}, "Our garage studio is setting up. Crab Pong is coming soon.")),
);
