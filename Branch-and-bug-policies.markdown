## Branch policies

  ----------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `maint`     Contains bug fixes on the last release version, and is the branch releases are made from. Immediately prior to a new release, `master` is merged here.
  `master`    Contains commits toward the next release, each of which must pass `tools/proof`. This test takes several hours to run.
  `next`      Contains commits toward the next merge into `master`. Each commit must pass `make check`, which takes only a few minutes to run. This is enforced by a `pre-commit` hook.
  `test`      An ephemeral branch that comes into existence to share provisional commits with testers. It is afterwards deleted.
  `t/topic`   These are quick moving topic branches which are kept locally. If they succeed, they are merged into `next`.
  ----------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Bug priorities

  ---- -------------------------------------------------
  P1   Intended for the next push of ‘next’
  P2   Intended for the next push of ‘master’
  P3   Intended for the next point release, e.g. 3.0.x
  P4   Intended for the next minor release, e.g. 3.x.0
  P5   Intended for the next major release, e.g. x.0.0
  ---- -------------------------------------------------


