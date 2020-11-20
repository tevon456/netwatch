# roles
INSERT INTO
    roles (name)
VALUES
    ('admin');

INSERT INTO
    roles (name)
VALUES
    ('data_clerk');

INSERT INTO
    roles (name)
VALUES
    ('subscriber_standard');

INSERT INTO
    roles (name)
VALUES
    ('subscriber_premium');

INSERT INTO
    roles (name)
VALUES
    ('guest');

# PERMISSIONS
INSERT INTO
    permissions (name)
VALUES
    ('create user');

INSERT INTO
    permissions (name)
VALUES
    ('delete user');

INSERT INTO
    permissions (name)
VALUES
    ('update user');

INSERT INTO
    permissions (name)
VALUES
    ('read user');

INSERT INTO
    permissions (name)
VALUES
    ('create movie');

INSERT INTO
    permissions (name)
VALUES
    ('delete movie');

INSERT INTO
    permissions (name)
VALUES
    ('update movie');

INSERT INTO
    permissions (name)
VALUES
    ('access 20 movie');

INSERT INTO
    permissions (name)
VALUES
    ('access 30 movie');

INSERT INTO
    permissions (name)
VALUES
    ('access * movie');

INSERT INTO
    permissions (name)
VALUES
    ('inactive');

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (1, 1);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (1, 2);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (1, 3);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (1, 4);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (1, 5);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (1, 6);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (1, 7);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (1, 10);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (2, 5);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (2, 6);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (2, 7);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (2, 10);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (3, 8);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (4, 9);

INSERT INTO
    role_has_permissions (role_id, permission_id)
VALUES
    (5, 11);

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'The Wolf of Snow Hollow',
        'Terror grips a small mountain town as bodies are discovered after each full moon. Losing sleep, raising a teenage daughter, and caring for his ailing father, officer Marshall struggles to remind himself theres no such thing as werewolves.',
        'https://m.media-amazon.com/images/M/MV5BOWZlMDBiMmItMWU0Ny00MGIzLWI1NTQtZDEwMjM0MzBiYjhkXkEyXkFqcGdeQXVyMzIxMjMyODY@._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi3433414937/1434659607842-pgv4ql-1600356419764.mp4?Expires=1605558328&Signature=Bhy9mDmN-z1OU30OmQUAkOm4b~F0vzeO0qC7sePg79s6TCP8XE~ZQbDpvLzLldRcbsHstf3rYAEevMUY22veHP8~p7ILvXLYaVr11incsrJ3PzHcZGBUfiABU5PE-KPpZ-HUP2AA06mXJRQBU2F5zNUAbPD9y~gvtsnMIh1MbtZ8MxtNa88H4EBAnMF3Bm8I3oTi5gTfrAFLiwHJOwL3N7l5F71QSlRS-OYU3rJj9yekxSJ1dub4GjZBd-is1EUcX6IbTtEPYrwuqQl9ErpbjJ0W7Zq7qqw2W6-hGcV17f3~8QrNQRtQzLxomOZPQAPt4R3KdDLy-BJY7bcn0~wMIQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'Freaky',
        'After swapping bodies with a deranged serial killer, a young girl in high school discovers she has less than 24 hours before the change becomes permanent.',
        'https://m.media-amazon.com/images/M/MV5BMTRkYmJlY2ItNmFlZi00OWVhLTg1ZTctOGE0MjM5ZGMwMmY4XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi2381037849/1434659607842-pgv4ql-1603812480485.mp4?Expires=1605561438&Signature=rKWMBHIKDNNc6OljHu~bxhqbNSqhu3wlIG5BCEWQUgCe0euLi3RZptFGyYA4mCo5dI8NTZJkQncRHe5xswqxLn2-eYWIwJZWZMviA-Vx4q4x3JoTVRcK30wBsCx-Ujvfjb8n1oh~0L9bs6xCQWHQJI9vq2U9txmJVW1EtjI8Ryl7Nb-OeYPNn0ePi72YPDFBqTQ-a5E7IMdYIobPrsh5kQ38lA8TYCowTYmkFKoxcGumsXLltBwyUEWuLWtcPUDtbO~Y37xiIjTGoQ7HQ25eFbIYZ7hWigrNwHx1CdC6MA28MnoiUi5fVxjcbByN10a4mfM5yo6jlonI3nU6aMk5xA__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'Unhinged',
        'After a confrontation with an unstable man at an intersection, a woman becomes the target of his rage.',
        'https://m.media-amazon.com/images/M/MV5BYjc1Mjg5NjItY2I2MS00NDk3LWI5NGYtNzZjNTNiZmMwZTA3XkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi3319512601/1434659607842-pgv4ql-1589304690057.mp4?Expires=1605562076&Signature=pkJVWN59hHQiMTRyDybJcBubXmQw03jWWYWD5MDlfYx1RL26G6OxE9phUGSlwuuqXL~m5yQMgaRhgQo0MfPyKfGfFeoSGOkVwZvZmeFuhvyZQPKsYUeRReDwXz08Xfjybj7xrOlx1ptUhYrckmOgwnzUxhXYLiviMoA9VZXw4Cy5S1f3nmSTLRt6zq9CtsYnjHYA7MsEefw8HeNsM~UfxNP4qocfguktFsgCVQW9Za~H2oJ7FRMouVfutmF~CNjGzpFAZMDrkYWF-4WobW~eU0ozTTF7QJROmR7Zxrr-ZeM1KSpeSuLTKCCuSPKMNG3EBH3Oxuhea8d6sw5NC6SVCA__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'Enola Holmes',
        'When Enola Holmes-Sherlocks teen sister-discovers her mother missing, she sets off to find her, becoming a super-sleuth in her own right as she outwits her famous brother and unravels a dangerous conspiracy around a mysterious young Lord.',
        'https://m.media-amazon.com/images/M/MV5BZjNkNzk0ZjEtM2M1ZC00MmMxLTlmOWEtNWRlZTc1ZTUyNzY4XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi1481096729/1434659607842-pgv4ql-1598360296623.mp4?Expires=1605562395&Signature=e171pL5121IiG0kRO7Fb1axQi2Enpz8fyeKBl0PP4aY54ACXLQFt3YKn9-5YCqUGhcm8ET7ozOfXaHBgq~pYX9qv5zrUQKBs7dCVuE~KXQeXYstyDtT7lTIDkhKdOGAUzmYEj9YivT2xWJcAwM6MnGKzf43xZ2nz23im-bf03U6s~d0LbYuUkYXkWqR7AZbV5JpZte~Bvrzh3mQPsiyMf3EnUlKPvqb0JwjVrHpafJYOgw1SQsXeNtgAVqjMr2SpalOMSKcuRkilNWv50ucaWOicQ5OnyiI7ufNmw3u1pDyF~Wu9HwZg2TJMC4wfmX8PuP5kJushxm9OGTDgWYNaTg__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'Tenet',
        'Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time.',
        'https://m.media-amazon.com/images/M/MV5BYzg0NGM2NjAtNmIxOC00MDJmLTg5ZmYtYzM0MTE4NWE2NzlhXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi1504821529/1434659607842-pgv4ql-1598916742145.mp4?Expires=1605562807&Signature=XG6nsC7clfj-uWsCB7k8aFzQldlr63h24ayt~ARIIZyx1l8jt7m-THNb~0L0S-7fTYXtRaRFA72j6cYVotZeSxeAr2fSKKt8OvUNVTnWJC~bXbvDnzRtM4g4Hnwf062e-Js5Gw53WYHijGmq6~Am9sDvm2i3nCKj0rF4e4qq~0QsaPMbRSvesUujWMVEuARoz3bBMnD6PxPNYjrEGZn9CD0YYoZloPDqsVl5UNRECMEFM9OTjKcDrzDh~wGO3AfQmExgO1KG79J5Kr8OC6~ttGRsXBKTZGP3Yu9LKCNycsEGF4CBjMdvfrN-KyGrmNPFLDdtHM~1m9J6FQJCg4e6aQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'Let Him Go',
        'A retired sheriff and his wife, grieving over the death of their son, set out to find their only grandson.',
        'https://m.media-amazon.com/images/M/MV5BNGNhN2I2NzEtMzFiMy00Y2IzLTk0OTctNjcxZmYwYjIyMzEzXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi876658201/1434659607842-pgv4ql-1597938670642.mp4?Expires=1605563139&Signature=KDIC7CT-IefBx6sndzRf9FV~nk8cYL2hsYHN-TKernxWdD-4XIOIFXdixMjtvX6ZqHmTqtDKNRzNUQs~AFrrsPHHaN-EO6uHxJcZQC5LEbjFBSYoo77T6E9lhWGzBJlHqDwB0VmWi4luCVeCV0uX358rLLLXZUM3FSQoGwS2ecuG6VU8H0XVtlqngfwGJmaqnTqwdkmmrJndhXkpkl42jYmNpYVv1DvOy1h2L2uceDyxiZ74oywEwwDG5Vqm98IV0VHT7KscEcScGdiX16jJu7pYUsu0JzdS5U0d3wcgSiA~9Fyr0ESIkKia5vl9MarX4czs-EFAG3VDqEcDRaMfBw__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'Holidate',
        'Fed up with being single on holidays, two strangers agree to be each others platonic plus-ones all year long, only to catch real feelings along the way.',
        'https://m.media-amazon.com/images/M/MV5BYWVmYTFjODItOTY2Ni00NDhhLTk1ZDYtMzBmOGFhZTMyY2Q0XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi714522905/1434659607842-pgv4ql-1601393230489.mp4?Expires=1605563741&Signature=tODETmYFDEZAA4jz0vXNWgfynXYlis9eBmz9evzh8vOLNPgKHpUW6ziXniUGGb6O0RGkRaxgXRHpF7E1B-VBznLL71cdpjAVTpJ~6k9FBJgAWtrjZ6Mwy49VJ9Sgre5COFdG2sL3XP46vnakAkN59pC5YDRshKd7osByTIncolGNLjEuP0rorESf5PhWuQJTKF5rrtR-I5nNjgtfcA1BAcxG9iwvn1au6Prysy7ZR4RtAgEmVUxjUs0addy-wVCvlaBjOAID14Dqb4tlGJKhh7kHJSGxuiSdZ3A1ym2zN-2mjdGNOiPXfn8tOBTPpGWuoXeTcr9iBKLkZ-1J0J-Z8A__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'Honest Thief',
        'Wanting to lead an honest life, a notorious bank robber turns himself in, only to be double-crossed by two ruthless FBI agents.',
        'https://m.media-amazon.com/images/M/MV5BZjEwNjYyMTMtODc5Yi00NTg5LTkwMzAtZTkyOTcyNTFkMGIyXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi845397529/1434659607842-pgv4ql-1596134478418.mp4?Expires=1605564046&Signature=OIFcDB4amsrproarR~8nOwMXShbbmm-1s~jCO1Y5CjvVZU0rLMC5hhR6eMrUxphOPF1Q3aA99bhmO4cHrQG90vz8cqvWffUf-R1Uvizbx8llbd~xpyvQUhxhRW6IqCv35aZPwbRR1fN2uAasQTI7vSuH9d0Lfm2Ioks-AQMg1jDF8xQZSeEfSwYR6VCSXNHmEaQrfZuh9xNN3flvT9s52l~TO5awDNC4gLskWhX1A2XDeBdWaE-JAYc9lmUrVG7Iv-YyFfe5fANZ0n4DFmdUdXwGhqOjVkaEb6IwkFIK5MizbcY63kQ3bclHnzpgBVNnGqSm0BxZDqAvHI2pNP4ZyQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'Toy Story',
        'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boys room.',
        'https://m.media-amazon.com/images/M/MV5BMDU2ZWJlMjktMTRhMy00ZTA5LWEzNDgtYmNmZTEwZTViZWJkXkEyXkFqcGdeQXVyNDQ2OTk4MzI@._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi2052129305/MV5BNjQzMDM2MzQyNV5BMTFeQW1wNF5BbWU3MDI1MDk3OTY@.mp4?Expires=1605564233&Signature=KN~pK~6V5~yoZst6WE~ApMrTWtq4X4m1V47anpwmYIAEhIIJIG8Xt31jjwmBI4YcOM3AoNlGupK1TPMqHpZuT2M6yOzjB1GFV6p638XHankjQF1Ct86iIcPXq9aZw55kfcIz8bM0tJnU4qjUCHRV5bsOHekFvutOf1FBu~J5tifkrozd9XmlbokXusVfwbDtnM7GoGlSUa0c4RgOw-WHTOWqZrzMXW3jgr~OYmSpCBzuGz~xqmRcnEGxb8KVWX-~UBEMzBaZAdtNztTGMQF3nporsMOzUtHQW-~8XQdflzyyz169h8VBitDE8VNP5ym~Efbpd~wxK6bkFsuDJggAGw__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'The Climb',
        'A look at the friendship between two guys that spans over many years.',
        'https://m.media-amazon.com/images/M/MV5BZDczYjkxYzMtMGM2Yy00MDg0LWIwZGQtMjYwZWEzNDFmMzY5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi872464153/1434659607842-pgv4ql-1576791883280.mp4?Expires=1605564549&Signature=EQEALeiiB-uV-Y8sqnuAlTuegO51pl~rp1Wzw-W4hunjh1KisjMrzilPi87O7kDvtzyRp7s33OWZdo2PenJn0ESgUp-YZUYrojAg-Cg9njo0Y97jIH4n0fBKSXR17k~~jAypXPZrm6Qp9Sl70yKvB6GlamqlYGgtiNZE8bBrNquuV~CyZ3iPj0IhFUR-X4dfIy4kv7iI1uEqRp7dH2MEUJvmQ7PXqxLXDeCsVDHQToSVyGJHYlR0w4NzLx9hKIhdwC0hNRmI-jcc74W3u5linLymNwMWCPDSTrEWr6pOAffvx-PR0gHF0B15EwEKOFJmAN6zBo6odrOD7Wh-hWBmeQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'Wolfwalkers',
        'A young apprentice hunter and her father journey to Ireland to help wipe out the last wolf pack. But everything changes when she befriends a free-spirited girl from a mysterious tribe rumored to transform into wolves by night.',
        'https://m.media-amazon.com/images/M/MV5BNTA4MWQ4NGUtOGQ0MS00M2QyLWE5MDItZWM2YzA0ZDgxZTA2XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi2022228249/1434659607842-pgv4ql-1602180400178.mp4?Expires=1605564881&Signature=laTN-~~sEUbFKC2H9T3y~aAUlgcignjudXqa89CLuaKansbLKj6ARoE2IAz1vQh4lBDawMmMwEc~6YJeNV6vVta0H1jXrr5YCiWXnmy3cIMNR~M2IJu5Ssc48uHtco7NyqzZVOSDAuX4rW5KkCvUsytu8Jr7kZJ7boiRgwuiXVnDnBFssPzqU64SA58xzPe7kz5Jbnyiv9X-9JEWES~dQQM7OYGsuSZszIRgTMkAQgzDXbtr1BAHhOy0Djekybb4nrCY2~EYR-uc47z0pfqZkmTG8851c9P3haPFCzDJYCcG6McrPV3nuc6J5HfK4JtJ2XvWqe2HI1NQaisVdE1s9w__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'Joker',
        'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker',
        'https://m.media-amazon.com/images/M/MV5BMTU2NjA1ODgzMF5BMl5BanBnXkFtZTgwMTM2MTI4MjE@._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi1723318041/1434659607842-pgv4ql-1567008550851.mp4?Expires=1605568034&Signature=QRpldPASsLqOcP0tjcqvEIhGTI0EBfqrE4YMoiONt~p~j2rV4nU0r6QhikL-NRgam~Pf7sezJL2z0Hx8UMjL8UbR4IcS8aztITI7LgOEoIZtekVxDzBAltJwLawP9caCj3nuMDHT1OT6p6IHYj6qqs7vLBeMUVV1pifK64YJKw83jGqbaRUGHujBmTHy3B8NRSAHFlGrw6ZhFU6lPuMYqK6zYLQ8yOb6ueOqzDzNduGyj5MHU2f~feBiAEf0MFN-iRnn0tDTz~ivqER2Cp3ExACGZv6Jzy7RKXmKNLTe6xab6ijPREkIIMOD9PWJtloj9kruFYXV2P-JFyF5RTgZ7Q__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'John Wick',
        'An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took everything from him.',
        'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi2273816345/MV5BMTQyMjAxNDI4OF5BMTFeQW1wNF5BbWU4MDcyOTkxODIx.mp4?Expires=1605565043&Signature=qJBxtNxe3vi92lxcOLNlhXs-0-dunbaj7~Lv4I0E-feyaXgR0MDyWsPxeOnQ41O3LoEVJgWZsQFuyn8g~O9Lg2K12uFC-7C~IO7w1SaI2rc1ZUIxmxXHyaHNGwBCeZ1Vp7NVmFi32L6Hyw0PvdDZ8Q~AqteRPHidEIBmhVFVWz0zsTLoLW5KOLVoojkO9TmvkJKeHTGaoT6wCts36rZaMn1M0SZqVCaXm74GTe6LdZpiBci9VZwyXvkYAzTt48I~1kDm3hMjh6q6PcHdXbZ3iFvdphZluOsDYM5xIIhEC7GPkIpN~M4zhWbXYXVMYziZny0sY2fBLhgUmsUxgSGwgQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );

INSERT INTO
    movies (title, description, thumbnail, trailer)
VALUES
    (
        'Girls Trip',
        'When four lifelong friends travel to New Orleans for the annual Essence Festival, sisterhoods are rekindled, wild sides are rediscovered, and theres enough dancing, drinking, brawling and romancing to make the Big Easy blush.',
        'https://m.media-amazon.com/images/M/MV5BMjMwNTEzODUwMV5BMl5BanBnXkFtZTgwNjE5NjA5MjI@._V1_UX182_CR0,0,182,268_AL_.jpg',
        'https://imdb-video.media-imdb.com/vi3164191001/1434659607842-pgv4ql-1494429365301.mp4?Expires=1605568229&Signature=kp7z6LslBnRkG9jTAJ4sreLz3lJzmDTkbdmrjNMUsl-ulTqAOnntkjm6cnR8E2~3M2kUVexFCXBicUMz1eREOws4bb7xHVbbeKPQZt~~IB2lyf5kW6ZI8H8-PDTyJeT8dPIGr1eyw87QHXlpBSyr6VEKrYMdi9WhQvj8UFLpAJlCjGRtBf3cianTMJqZRUAM2~IOpo2BoprOk58uskCWXAOgekga7x1FIWuNGael12iPKeHZYr1fSoE54uEEUyPmKDDjgxxaYv90lcTs83krk0bFg0kkAo2nNIvJ1J3BQQPCAVb0Z9NXBS9VufUO8A3tfjWgrZ88UVeB8OK8a-WKDA__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA'
    );