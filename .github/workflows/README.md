# Workflows

This directory contains GitHub Actions workflows used to automate various tasks for this repository. Each workflow is defined in a separate YAML file and is triggered by specific events (pull requests for now).

## Available Workflows

### `check-changed-files.yml`
| **Name:** | Validate Pull Request |
| --- |--- |
| **Description:** | This workflow first ensures that only files under `data/birth-dates/*.txt` are changed. If that succeeds, it checks that exactly one birthdate file was edited and validates its contents against the encoded answer key. |
| **Trigger:** | `pull_request_target` with types: opened, synchronize, reopened, ready_for_review |
| **Used files:** | `validate_birthdates.sh`, `birthdates` |
| **Note:** | The workflow checks out only the trusted base commit. The pull request head is fetched as Git data and is never checked out or executed. Changes are measured from the PR's merge base, so newer commits on the base branch do not cause false validation failures. The birthdate job depends directly on the changed-files job, so no polling action is required. |


### `label-semester.yml`
| **Name:** | Add Semester Label |
| --- |--- |
| **Description:** | This workflow is triggered by pull requests and automatically adds a label indicating the current semester (e.g., `FSS25` or `HWS25/26`) to the pull request. This helps in organizing and tracking pull requests based on the semester they were created in. |
| **Trigger:** | `pull_request_target` with types: opened |
| **Used files:** | - |

## Security policy for `pull_request_target`

These workflows intentionally use `pull_request_target` so pull requests from forks receive automatic validation and semester labels using workflow code from the trusted base branch. Because this event has a privileged security context, all future workflow changes must preserve these rules:

- Grant each workflow only the minimum required `GITHUB_TOKEN` permissions.
- Never check out, source, evaluate, build, or execute content from a pull request. Installing dependencies from the PR is also execution.
- The validation workflow may fetch the PR commit only into Git's object database and inspect it with non-executing Git commands such as `git diff` and `git show`.
- Keep the jobs on isolated GitHub-hosted runners. A self-hosted runner requires a separate threat assessment.

GitHub's Actions event policy should allow `pull_request_target` only for these reviewed workflow paths, not broadly for every workflow in the repository or organization.
