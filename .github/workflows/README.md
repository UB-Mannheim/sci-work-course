# Workflows

This directory contains GitHub Actions workflows used to automate various tasks for this repository. Each workflow is defined in a separate YAML file and is triggered by specific events (pull requests for now).

## Available Workflows

### `check-changed-files.yml`
| **Name:** | Validate Pull Request |
| --- |--- |
| **Description:** | This workflow first ensures that only files under `data/birth-dates/*.txt` are changed. If that succeeds, it checks that exactly one birthdate file was edited and validates its contents against the encoded answer key. |
| **Trigger:** | `pull_request_target` with types: opened, synchronize, reopened, ready_for_review |
| **Used files:** | `validate_birthdates.sh`, `birthdates` |
| **Note:** | The workflow checks out only the trusted base commit. The pull request head is fetched as Git data and is never checked out or executed. The birthdate job depends directly on the changed-files job, so no polling action is required. |


### `label-semester.yml`
| **Name:** | Add Semester Label |
| --- |--- |
| **Description:** | This workflow is triggered by pull requests and automatically adds a label indicating the current semester (e.g., `FSS25` or `HWS25/26`) to the pull request. This helps in organizing and tracking pull requests based on the semester they were created in. |
| **Trigger:** | `pull_request` with types: opened |
| **Used files:** | - |
