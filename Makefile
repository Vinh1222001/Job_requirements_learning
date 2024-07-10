REPO_NAME = Job_requirements_learning
ACCESS_TOKEN = PERSONAL_GITHUB_ACCESS_TOKEN

create_repo:
	curl -L \
	-X POST \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer ${ACCESS_TOKEN}" \
	-H "X-GitHub-Api-Version: 2022-11-28" \
	https://api.github.com/user/repos \
	-d "{\"name\":\"${REPO_NAME}\",\"description\":\"This is your first repo!\",\"homepage\":\"https://github.com\",\"private\":false,\"is_template\":true}"