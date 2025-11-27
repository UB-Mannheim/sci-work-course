# Workflows

This directory contains GitHub Actions workflows used to automate various tasks for this repository. Each workflow is defined in a separate YAML file and is triggered by specific events (pull requests for now).

## Available Workflows

### `check-birthdates.yml`

| **Name:** | Birthdate Check |
| --- |--- |
| **Description:** | This workflow is triggered by pull requests and checks that the entered birthday is correct by validating it against the encoded birthday in the `birthdates` file. The workflow fails if there is a mismatch or if more than one file has been changed in the pull request. |
| **Trigger:** | `pull_request_target` and only on path `data/birth-dates/*.txt` |
| **Used files:** | `validate_birthdates.sh`, `birthdates` |
| **Note:** | The workflow consists of two jobs. One waits for another workflow to succeed before carrying out the actual birthday check. This ensures that no workflow files were changed in the pull request, which could alter this workflow's behaviour in a dangerous way. |


### `check-changed-files.yml`
| **Name:** | Restrict Changes |
| --- |--- |
| **Description:** | This workflow is triggered by pull requests and ensures that only allowed files (files under `data/birth-dates/*.txt`) are changed. If any other files are modified, the workflow fails. |
| **Trigger:** | `pull_request_target` with types: opened, synchronize, reopened, ready_for_review |
| **Used files:** | - |


### `label-semester.yml`
| **Name:** | Add Semester Label |
| --- |--- |
| **Description:** | This workflow is triggered by pull requests and automatically adds a label indicating the current semester (e.g., `FSS25` or `HWS25/26`) to the pull request. This helps in organizing and tracking pull requests based on the semester they were created in. |
| **Trigger:** | `pull_request` with types: opened |
| **Used files:** | - |
