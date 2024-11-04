# Plugin takeover policy

If a plugin becomes unmaintained, such as due to the author abandoning it, the plugin is eligible to be transferred to a new maintainer. Transferring plugins is up to the discretion of the RuneLite maintainers, but in most cases we follow the below procedure:

### Eligible plugins
- Plugins must not have development activity for the last 30 days
- Author must be non-communicating

### Policy

1. Try to contact the author via opening an issue on the repository asking to be granted collaborator access. Commonly the author is available but is busy with other obligations, but will be willing to to add you as contributor to the repository. If the author adds you as a collaborator, add yourself as an author in the pluginhub pull request via adding an `authors` line to the plugin file, and have the author leave a comment *on the pull request* stating they are okay with the author change.\
\
Becoming a collaborator on an existing plugin is preferred over having the plugin transferred, because it is less work for us, and the plugin ends up with more than a single maintainer.

2. If the author is unavailable, after 7 days send a pull request to the pluginhub changing the plugin to your repository, but *don't change the commit hash*. You can accomplish this via forking the old repository. Mention in the pull request description that you would like to takeover the plugin. We will attempt to contact the author via GitHub, and if they are unavailable, assign the plugin to you after a period of 2 weeks.

3. As a special exception, plugins which have been deleted or disabled may be immediately claimed. We have source archives of pluginhub plugins, if you need access to the source of a deleted plugin, make a post in `#runelite` on Discord and someone will be able to fetch it for you.