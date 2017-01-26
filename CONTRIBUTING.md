*Adapted from the [qtox guide.](https://github.com/qTox/qTox/blob/master/CONTRIBUTING.md)*  
You **don't** have to know all of this... it's here as you go along and make
things easier, not harder.

Skim through it, and when you will be doing something that relevant section will
apply to, just go back to it and read in more detail about what is the best
course of action. You don't even need to memorize the section – after all, it
still will be there next time you might need it. :-)

# Filing an Issue:
 * Do a quick search. Someone might have already filed an issue.
 No one will be upset if you file a duplicate issue, but searching first saves
 you (and us) time.

 * We speak English, so please try to write in that. If you're not very good at
 it - it's okay!  
 If English is not an option, feel free to use your native language and we'll
 try to translate, but remember that we may not be able to translate correctly.

 * The following information is **essential**:
	* Version of Atom
 	* Version of Termination
 	* Operating System
 	* Any debug information
 	* Steps to reproduce the problem


 * Screenshots/GIFs are always welcome and worth a thousand words!
 [(How?)](https://help.github.com/articles/file-attachments-on-issues-and-pull-requests)

### Good to know
 * There is no such thing as too much info! The more you can provide us, the
 easier it will be to fix your issue.

 * **Patience**. This fork is a one-man job (though we have an excellent upstream).
 I have to find time, analyze the problem and fix the issue, all of which takes
 time. :clock3: Additionally, I'm still learning Java/CoffeeScript so coding
 takes longer than for other languages.

 * If you can code, why not become a **contributor** by fixing the issue and
  opening a pull request? :wink:

 * Harsh words won't help your situation. What's worse, your complaint
  will (very likely) be **closed**. :fearful:

 * It's awesome to get bug reports for Atom Beta! We get extra time for fixing...
 However, our primary focus is the stable branch of Atom. We don't release any
 changes for Atom Beta that cause a regression for our users on Atom Stable.
 Please report Atom Beta bugs, but be prepared for them to not be fixed
 until the next release of Atom Stable. :smile:

 * macOS-specific support is a bit problematic as we do not have access to Apple
 hardware or software. Again, please report but be prepared for a wait!

# Contributing:
* Keep the title **short** and provide a clear description about what your pull
  request does.
* Provide **screenshots** for UI related changes.
* Commit message should state not only what has been changed, but also why a
  change is needed.

## Pull request

*PR = Pull request*
* One topic per PR
* Rebase your PR branch on top of upstream `master` before submitting the PR
* Squash only the commits with uninteresting changes like typos, docs,
  improvements, etc… and keep the important and isolated steps in different
  commits.

  ## Good to know
  * **Search** the pull request history! Others might have already implemented
    your idea and it could be waiting to be merged (or have been rejected
    already). Save your precious time by doing a search first.
  * When resolving merge conflicts, do `git rebase <target_branch_name>`, don't
    do `git pull`. Then you can start fixing the conflicts.  [Here is a good
    explanation](https://www.atlassian.com/git/tutorials/merging-vs-rebasing).

	If the commit reverts a previous commit, it should begin with `revert: `,
	followed by the header of the reverted commit. In the body it should say:
	`Revert commit <hash>.`, where the hash is the SHA of the commit being
	reverted.

  ## Git config

	*Not a requirement but definitely encouraged.*

	It's nice when commits are being GPG-signed.  Github has a few articles about
	configuring & signing.

	https://help.github.com/articles/signing-commits-using-gpg/

	And *tl;dr* version:

	```
gpg --gen-key
gpg --send-keys <your generated key ID>
git config --global commit.gpgsign true
```

  ## Coding Style
  Spaces, not tabs. I know, I know... I prefer tabs too, but upstream uses
  spaces and I want to stay as compatible as possible.

  Properly separate braces and parentheses, separate items with a space, and
  *try* to stay within the 80th-character margin. :wink:
