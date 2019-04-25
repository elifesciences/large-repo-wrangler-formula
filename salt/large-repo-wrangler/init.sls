dependencies:
    pkg.installed:
        - pkgs:
            - git-lfs
            - openjdk-11-jre-headless

bfg installation:
    file.managed:
        - name: /usr/share/bfg-1.12.16.jar
        - source: http://repo1.maven.org/maven2/com/madgag/bfg/1.12.16/bfg-1.12.16.jar
        - source_hash: c3d1c13b5a0023fdeb93353b2386563c
        - require:
            - dependencies
    
bfg wrapper:
    file.managed:
        - name: /usr/local/bin/bfg
        - source: salt://large-repo-wrangler/config/usr-local-bin-bfg
        - mode: 755 # read+executable by owner+group+world
        - require:
            - bfg installation

# downloaded from:
# https://gist.githubusercontent.com/malcolmgreaves/39e33e9b161916cb92ae0fdcfea91d64/raw/5e0d6a2cb7a7d8f766267ab0d608aedd3f6c0ceb/git-largest-files
# on: 2019-04-25. shebang tweaked to use "python3" instead of "python" as default "python" on 18.04 is still python 2.7 !
inspect history script:
    file.managed:
        - name: /usr/local/bin/git-largest-files
        - source: salt://large-repo-wrangler/scripts/git-largest-files
        - mode: 755 # read+executable by owner+group+world

# TODO: clean this repo up: https://github.com/elifesciences/elife-pub-scripts/blob/master/git-lfs.txt
# and get it integrated into formula somehow
