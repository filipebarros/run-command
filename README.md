# Run Command Action

This action runs a command and saves its output on a new step variable.

## Inputs

### command

Command to run on the docker image

### result

Variable where to store the result

```
- uses: filipebarros/run-command@master
  id: command
  with:
    command: echo "${{ github.event.comment.body }}" | cut -d ' ' -f2
    result: environment
- name: Access the new variable
  run: |
    echo "Variable: ${{ steps.command.outputs.environment }}"
```
