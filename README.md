# rail-planning

## ssh to `student-linux.tudelft.nl` -> `mapfw.ewi.tudelft.nl`
```
ssh student-linux.tudelft.nl
ssh mapfw.ewi.tudelft.nl
```

#### Assign ssh key `<keyname>` to ssh agent
```
eval $(ssh-agent)
ssh-add ~/.ssh/<keyname>
```

#### Run planner on domain and problem
```
/data/ipc2018/solvers/sat/team/planner.img domain.pddl problem.pddl re.out
```

## IPC2018 - Classical Tracks
- https://ipc2018-classical.bitbucket.io/
- https://bitbucket.org/ipc2018-classical/workspace/repositories
- https://ipc2018-classical.bitbucket.io/planner-abstracts/ipc-2018-planner-abstracts-classical-tracks.pdf
