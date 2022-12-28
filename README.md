# home-ansible

This is a simple repository which holds some simple ansible code for enabling
various configuration setups on my systems.

If you choose to use these please see the example_environment.yml file for
information of the variables you may need to set.

## License

This project is licensed under the MIT license.

## Inventory

This repo includes two inventory files:
- example_inventory.yml - The inventory you should base your own invenotry off of
- shortword_inventory.yml - The (encrypted) inventory file that I use for my systems

### Why?

The example inventory should be pretty self-explanatory: so you can create your own.

But why expose mine (at least, and encypted version)? The main reasons are:

1. Because it doesn't include anything too sensative. Variables that include my username, hostnames, SSH ports, etc. These are things you could find or possibly deduce.
2. To protect users from accidentally exposing their services. If you look, I pull SSH public keys from github. So, if you were to use my actual URL, you'd pull my public keys, theoretically allowing me access to your SSH (if I knew the URL/IP and port, which I don't).
3. To make my own life easier. It's a lot easier to initialize systems (local and remote) when I don't have to register SSH keys ahead of time, setup VPNs, or anythign else that I might need to get access to a "more private" repo.
4. To expose you to `ansible-vault` (at least in an indirect way). It's a useful feature.

Of course, you're free to try to crack it, but I wouldn't; if for no other reason than the time and resources wasted.
