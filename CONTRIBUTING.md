# Contributing

We would love for you to contribute to Butler and help make it even better than
it is today! As a contributor, here are the guidelines we would like you to follow:

* [Code of Conduct](#code-of-conduct)
* [Questions](#questions)
* [Issues and Bugs](#issues-and-bugs)
* [Feature Requests](#feature-requests)
* [Submission Guidelines](#submission-guidelines)
  * [Submitting an Issue](#submitting-an-issue)
  * [Submitting a Pull Request (PR)](#submitting-a-pr)
* [Commit Message Guidelines](#commit-message-guidelines)

## Code of Conduct <a name="code-of-conduct"></a>

Help us keep Butler open and inclusive. Please read and follow our
[Code of Conduct](CODE_OF_CONDUCT.md).

## Questions <a name="questions"></a>

Do not open issues for general support questions as we want to keep GitHub issues for 
bug reports and feature requests.
Instead, we recommend using [Stack Overflow][stack-overflow] to ask support-related questions. When creating a new question on Stack Overflow, make sure to add the `butler` tag.

Stack Overflow is a much better place to ask questions since:

- there are thousands of people willing to help on Stack Overflow
- questions and answers stay available for public viewing so your question/answer might help someone else
- Stack Overflow's voting system assures that the best answers are prominently visible.

To save your and our time, we will systematically close all issues that are requests for general support and redirect people to Stack Overflow.

## Issues and Bugs <a name="issues-and-bugs"></a>

If you find a bug in the source code, you can help us by
[submitting an issue](#submitting-an-issue) to our GitHub Repository.

## Feature Requests <a name="feature-requests"></a>

You can *request* a new feature by [submitting an issue](#submitting-an-issue) to our
GitHub Repository.

## Submission Guidelines <a name="submission-guidelines"></a>

### Submitting an Issue <a name="submitting-an-issue"></a>

Before you submit an issue, please search the issue tracker, maybe an issue for your
problem already exists and the discussion might inform you of workarounds readily
available.

We want to fix all the issues as soon as possible, but before fixing a bug we need to
reproduce and confirm it. In order to reproduce bugs, we will systematically ask you
to provide a minimal reproduction. Having a minimal reproducible scenario gives us a
wealth of important information without going back & forth to you with additional
questions.

A minimal reproduction allows us to quickly confirm a bug (or point out a coding
problem) as well as confirm that we are fixing the right problem.

We will be insisting on a minimal reproduction scenario in order to save maintainers
time and ultimately be able to fix more bugs. Interestingly, from our experience, users
often find coding problems themselves while preparing a minimal reproduction. We
understand that sometimes it might be hard to extract essential bits of code from a
larger codebase but we really need to isolate the problem before we can fix it.

Unfortunately, we are not able to investigate / fix bugs without a minimal reproduction,
so if we don't hear back from you, we are going to close an issue that doesn't have
enough info to be reproduced.

You can file new issues by selecting from our [templates][new-issue-templates]
and filling them out.

### Submitting a Pull Request (PR) <a name="submitting-a-pr"></a>

Before you submit your Pull Request (PR) consider the following guidelines:

1. Search [GitHub][pull-requests] for an open or closed PR that relates to your
    submission. You don't want to duplicate effort.

2. Be sure that an issue describes the problem you're fixing, or documents the
    design for the feature you'd like to add.

3. Make your changes in a new git branch:

    ```shell
    > git checkout -b feat--my-feature-name master
    ```

    Branch name needs to be start with one of the following:

      1. feat--*
      2. fix--*
      3. docs--*
      4. ci--*
      5. chore--*
      6. build--*
      7. perf--*
      8. refactor--*
      9. test--*
    
4. Create your patch, **including appropriate test cases**.

9. Commit your changes using a descriptive commit message that follows our 
    [commit message conventions](#commit-message-format).
    Adherence to these conventions is necessary because release notes are automatically generated from these messages.

        ```shell
        git commit --all
        ```
        Note: the optional commit `-a` command line option will automatically "add" and 
        "rm" edited files.

10. Push your branch to GitHub:

    ```shell
    git push origin my-fix-branch
    ```

11. In GitHub, send a pull request to `butler:master`.

## Commit Message Guidelines <a name="commit-message-guidelines"></a>

To make it easy to adhere to our commit message guidelines, we use a prompt tool built
by `commitlint` and it can be accessed by:

```shell
> make commit

### Commit Message Format <a name="commit-message-format"></a>

We have very precise rules over how our Git commit messages must be formatted.
This format leads to **easier to read commit history**.

Each commit message consists of a **header**, a **body**, and a **footer**.


```
<header>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```

The `header` is mandatory and must conform to the [Commit Message Header](#commit-header) format.

The `body` is mandatory for all commits except for those of type "docs".
When the body is present it must be at least 20 characters long and must conform to the [Commit Message Body](#commit-body) format.

The `footer` is optional. The [Commit Message Footer](#commit-footer) format describes what the footer is used for and the structure it must have.

Any line of the commit message cannot be longer than 100 characters.

#### <a name="commit-header"></a>Commit Message Header

```
<type>(<scope>): <short summary>
  │       │             │
  │       │             └─⫸ Summary in present tense. Not capitalized. No ending period.
  │       │
  │       └─⫸ Commit Scope: *
  │
  └─⫸ Commit Type: build|chore|ci|docs|feat|fix|perf|refactor|test
```

The `<type>` and `<summary>` fields are mandatory, the `(<scope>)` field is optional.

##### Type

Must be one of the following:

* **build**: Changes that affect the build system or external dependencies 
    (example scopes: npm)
* **chore**: Other changes that don't modify src or test files
* **ci**: Changes to our CI configuration files and scripts (example scopes: Circle, 
    GitHub Actions)
* **docs**: Documentation only changes
* **feat**: A new feature
* **fix**: A bug fix
* **perf**: A code change that improves performance
* **refactor**: A code change that neither fixes a bug nor adds a feature
* **test**: Adding missing tests or correcting existing tests

##### Scope 

The scope should be the name of the npm package affected (as perceived by the person
reading the changelog generated from commit messages).

The following is the list of supported scopes:

* **\***: No specific scope.

##### Summary

Use the summary field to provide a succinct description of the change:

* use the imperative, present tense: "change" not "changed" nor "changes"
* don't capitalize the first letter
* no dot (.) at the end


#### <a name="commit-body"></a>Commit Message Body

Just as in the summary, use the imperative, present tense: "fix" not "fixed" nor 
"fixes".

Explain the motivation for the change in the commit message body. This commit message 
should explain _why_ you are making the change. You can include a comparison of the 
previous behavior with the new behavior in order to illustrate the impact of the change.


#### <a name="commit-footer"></a>Commit Message Footer

The footer can contain information about breaking changes and is also the place to 
reference GitHub issues, Jira tickets, and other PRs that this commit closes or is 
related to.

```
BREAKING CHANGE: <breaking change summary>
<BLANK LINE>
<breaking change description + migration instructions>
<BLANK LINE>
<BLANK LINE>
Fixes #<issue number>
```

Breaking Change section should start with the phrase "BREAKING CHANGE: " followed by a 
summary of the breaking change, a blank line, and a detailed description of the breaking
 change that also includes migration instructions.


### Revert commits

If the commit reverts a previous commit, it should begin with `revert: `, followed by 
the header of the reverted commit.

The content of the commit message body should contain:

- information about the SHA of the commit being reverted in the following format: `This 
    reverts commit <SHA>`,
- a clear description of the reason for reverting the commit message.


[pull-requests]: https://github.com/cadmusthefounder/butler/pulls
[stack-overflow]: https://stackoverflow.com/questions/tagged/butler
[new-issue-templates]: https://github.com/cadmusthefounder/butler/issues/new/choose