Rubocop
=======

Docker image with [Rubocop](https://rubocop.org) and the most commonly used extras.

## Usage

    docker run --rm --workdir="$PWD" --volume="$PWD":"$PWD" erlend/rubocop

### Tags

- [`latest`](https://github.com/erlend/docker-rubocop/blob/main/Dockerfile)
- [`alpine`](https://github.com/erlend/docker-rubocop/blob/main/Dockerfile.alpine)
- [`slim`](https://github.com/erlend/docker-rubocop/blob/main/Dockerfile.slim)

### Standard

There are two options for running
[standard](https://github.com/testdouble/standard). The simplest is just to
setting  the entrypoint to `standardrb`.

    docker run --rm -w "$PWD" -v "$PWD":"$PWD" --entrypoint=standardrb erlend/rubocop

You can also keep using the `rubocop` entrypoint by changing your `.rubocop.yml`
as [described in this guide](https://evilmartians.com/chronicles/rubocoping-with-legacy-bring-your-ruby-code-up-to-standard).

## Extras

### Plugins

- [rubocop-i18n](https://github.com/puppetlabs/rubocop-i18n)
- [rubocop-minitest](https://github.com/rubocop/rubocop-minitest)
- [rubocop-performance](https://github.com/rubocop/rubocop-performance)
- [rubocop-rails](https://github.com/rubocop/rubocop-rails)
- [rubocop-rake](https://github.com/rubocop/rubocop-rake)
- [rubocop-rspec](https://github.com/rubocop/rubocop-rspec)
- [rubocop-sorbet](https://github.com/shopify/rubocop-sorbet)
- [rubocop-thread_safety](https://github.com/covermymeds/rubocop-thread_safety)
- [standard](https://github.com/testdouble/standard)
