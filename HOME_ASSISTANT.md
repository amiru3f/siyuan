# Home Assistant packaging

This fork adds a Home Assistant app in [`haos`](haos). It is a thin wrapper around the upstream `b3log/siyuan:v3.8.6` image, so the application retains upstream behavior and its AGPL-3.0 license.

The wrapper is intentionally local-build based: Home Assistant builds a tiny layer that reads the app configuration and starts the pinned upstream image. This avoids publishing a separate image registry while keeping installation possible by adding this GitHub repository in the Home Assistant app store.

See [`haos/README.md`](haos/README.md) for installation, security, backup, and recovery guidance.
