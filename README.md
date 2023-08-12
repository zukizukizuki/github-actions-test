# github-actions-test

[![backend](https://github.com/zukizukizuki/github-actions-test/actions/workflows/backend.yml/badge.svg)](https://github.com/zukizukizuki/github-actions-test/actions/workflows/backend.yml)

## 概要
- backendはEC2で稼働する
- frontendはS3で稼働する
- CI/CDを組んでおり、mainブランチにpushされたら稼働を実施する
  - backendのCI/CDはbuildとdeployを実行する
  - frontendのCI/CDはdeployのみ実行する
