#!/bin/bash
# Skrypt zaliczeniowy - Podstawy GIT (learngitbranching.js.org)
# Autor: [Twoje Imie i Nazwisko]

# ==========================================
# CZĘŚĆ LOKALNA (Main)
# ==========================================

# 1. Wprowadzenie (Introduction Sequence)
git commit; git commit
git checkout -b bugfix
git checkout -b bugfix; git commit; git checkout main; git commit; git merge bugfix
git checkout -b bugfix; git commit; git checkout main; git commit; git checkout bugfix; git rebase main

# 2. Rozkręcamy się (Ramping Up)
git checkout c4
git checkout c3
git branch -f main c6; git checkout HEAD^; git branch -f bugfix c0
git reset local~1; git checkout pushed; git revert pushed

# 3. Przenoszenie pracy (Moving Work Around)
git cherry-pick c3 c4 c7
git rebase -i overHere

# 4. Po trochu wszystkiego (A Mixed Bag)
git checkout main; git cherry-pick C4
git rebase -i caption~2; git commit --amend; git rebase -i caption~2; git branch -f main caption
git checkout main; git cherry-pick C2; git commit --amend; git cherry-pick C3
git tag v0 C1; git tag v1 C2; git checkout v1
git commit

# 5. Tematy Zaawansowane (Advanced Topics)
git rebase main bugFix; git rebase bugFix side; git rebase side another; git rebase another main
git branch bugWork main~^2~
git checkout one; git cherry-pick C4 C3 C2; git checkout two; git cherry-pick C5 C4 C3 C2; git branch -f three C2

# ==========================================
# CZĘŚĆ ZDALNA (Remote)
# ==========================================

# 1. Push & Pull - Zdalne repozytoria (Git Remotes)
git clone
git commit; git checkout o/main; git commit
git fetch
git pull
git clone; git fakeTeamwork 2; git commit; git pull
git commit; git commit; git push
git clone; git fakeTeamwork; git commit; git pull --rebase; git push
git checkout -b feature; git branch -f main o/main; git push origin feature

# 2. Zaawansowane Zdalne Repozytoria (To Origin And Beyond)
git fetch; git rebase o/main side1; git rebase side1 side2; git rebase side2 side3; git rebase side3 main; git push
git checkout main; git pull; git merge side1; git merge side2; git merge side3; git push
git checkout -b foo o/main; git pull; git push; git checkout main; git branch -u o/main main; git pull; git push
git push origin main; git push origin foo
git push origin main~1:foo; git push origin foo:main
git fetch origin c2:foo; git fetch origin c6:main; git checkout foo; git merge main
git push origin :foo; git fetch origin :bar
git fetch origin c3:foo c2:side