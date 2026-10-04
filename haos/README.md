# SiYuan Home Assistant app

This directory packages the official SiYuan container as a Home Assistant app (previously called an add-on). It does not modify SiYuan's application code.

## Install

1. In Home Assistant, open **Settings - Apps - App store**.
2. Open the overflow menu, choose **Repositories**, and add `https://github.com/amiru3f/siyuan`.
3. Select **SiYuan**, install it, enter a strong lock-screen code, then start it.
4. Open the app's web UI at port `6806` (or the port selected in the app's Network settings).

The SiYuan workspace is stored at `/data` inside the app and is included in Home Assistant app backups. Do not run another SiYuan instance against this same workspace.

## Security and networking

The lock-screen code is required and is passed only to the local SiYuan process. For access outside the local network, publish the app through a TLS reverse proxy and ensure WebSocket traffic to `/ws` is proxied with the original `Host` header. Do not expose the app directly to the Internet.

SiYuan includes an MCP server. Its authentication and MCP configuration remain managed in the SiYuan web interface; this packaging intentionally does not grant the container access to Home Assistant's configuration, secrets, Supervisor token, or host devices.

## Upgrades and recovery

Create a Home Assistant backup before updating. SiYuan stores both content and indexes in its workspace, so restore the complete app backup rather than attempting to restore individual database files.

## License

SiYuan is licensed under AGPL-3.0. This packaging remains in the SiYuan source repository and preserves that license.
