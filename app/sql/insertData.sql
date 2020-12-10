# plans
INSERT INTO
    plans (name, cost)
VALUES
    ('standard', 10.00);

INSERT INTO
    plans (name, cost)
VALUES
    ('premium', 18.00);

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

INSERT INTO
    roles (name)
VALUES
    ('suspended');

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
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Commitments, The',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAGeSURBVDjLxZO/axRRFIW/N7o7CZIIKhosAoIIopWNqEX0L7ARG0EU0V4UVLBJJVjY2FgsgiykCOY/SIw2tgHJqEELUUzQJpudcd/c9+M+ixBYhNkmhae7X3E498AxKSV2o4xdau/wMfv6V6XK89mrRx4N8zud78ve6UXxivjAwv0TpinBvqg8uNf98WQYWqucmh7j0ukJSknNL1ivnDmWm8OT7Ye3Xnx7tsMH4hAfcV6prGs2EBdQYPpgm6n97buXn669BCglYV1CvFJKbO7gj0+4oPRt5PhUi02b3zz/+EMbDLUbo24Z+labDaxVJCi9QSAzcPLoOC24tlj0ZHI8Q3wkWN9sMBCH80rtInsMZCZRB6USrco65hmgoxKUkhCfIEGeG94WW6x87S+QOPR7080cmGiRZESJld1uO28Zllb7rKz15n92zl5Rq0kk4oKS6jgqQUS88q7oUXwpu+vdc9cBkjiC2+5n5At9qywXPT593nq1Pnfhxg5PdcR7xUcl+dBsEKzn42rZ2ZifuT3M1Srv32yQgvLv+Mx/X+Nfknb5JPA+HGwAAAAASUVORK5CYII=',
        'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.',
        2012,
        'Natale Colegrove',
        'Comedy|Drama|Musical',
        'United States',
        0884,
        'http://dummyimage.com/222x128.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Material Girls',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAADISURBVCjPvdCxicQwEAXQzzlwcMZg9jhFKy5QpsyRcKLIYJxsYLAruApUgSu4DlTBdLAVbCO/jblgxcImDs1P3/wZBorj4BSw7qussmyKeRslStgVCjfYP3MtDSsXefoogQrfOrHZtK8VC28FBOmpcHcrbzfcOD/GFFNI/eOHbjI0ubs3uW4LmDmWCS/ftMlQ0VxrVr8FjIwFOLnQpI4KRUWkAiJDAVa+2PlP1kPlP4hBAUXcg/TiN4XdjHTS7PVUZWRM5736OP+SP+v5etuPyQAAAABJRU5ErkJggg==',
        'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',
        1996,
        'Basile Kittles',
        'Children|Comedy|Drama',
        'China',
        0252,
        'http://dummyimage.com/206x111.jpg/5fa2dd/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Castaway Cowboy, The',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKvSURBVDjLpVNNTxNRFD1vZtoZICkyhdYilFQ0QKSayoJEoyY10UTjgh0LUXcuJW5wSYwfG1caNCxY8RPQxOBHEDEkREJSS2qpIKHWllLol+10pp0Z3xsCupPEl9x3J5N7zj3v3Fximib+5wjsGh8ff1ipVILVarVO13WiqqpNURQ7y4ZhEFEUNVmWX46MjAyz+qGhoT6avk9OTu6QsbGxRp7nc4FAAEwNBVgRWXqDG9eOQ1ubwNP33XC4e7CyEruZzWafUbCDBpPez3d2doZ7e3tlt9uNeDyOVCqFTCaDVm83Zha3EC2exqm+cyCEIJlMDnAcJ0qSBEEQSKFQOC/QrsccDgfC4TBcLhf8fj/oU0CfgpaWFkQiEczNzcHpdCIYDGJzcxO5XM6qiUajXQIrTKfTaG5uRrXBiyfvFJRqBAbVJxIbLrQdhVwsUvkrYCoZMBaLwePxWE/l2FUqldDe3o6pLxpUk4Nko2HnoHM2fPjRYAG3t7ctsKZpoAbvqxQYAXXbil+6nQJ5CBx1iFpE6KWZdtAJWcHArI59s2wpYCx7rOyYprELpiQcDZ4jKJfLVs3fCvYI9hVQR2E361AzJHBsQuauCjsU5PN59JEEvK9H4c38RBcvIp4+ifk9AsYYCoUQaPVjKe+CKkjg6dhshoIj2jKwOIWrPh49F+9A9J2AEprG8se3WNvIQ2DdWQc2Hmc2i36fzzKHyS1S9xnxwNZndF+/D2l1Bph9gPrGQ/B1dOBMJAaBznR4fX39MVUiNjU1kYWFBcIImDKWqWGm7FCJdNgHXLn7ZwdGPaCDZ0b/e5mmLwnxs4O32ho2XkFVUijTf8UCj6+rSHAH2bh62T2xPD9bS1bqUOBtyO4QfEsQnbZ+Tg66zp8GvfdKOz9v8zrp0HkzQVEvLk/XHv0Gq/ySugg7yEwAAAAASUVORK5CYII=',
        'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',
        1993,
        'Stefano Dossett',
        'Comedy|Western',
        'Ukraine',
        0743,
        'http://dummyimage.com/221x231.jpg/ff4444/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Counter Investigation (Contre-enquête)',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAL+SURBVBgZBcFNaJtlAMDx//ORjzZbs7TJkmowbJcdZqr1oNavCiIIMraBh0IY7uZx8+OiVw9SQZgXp3gR3A5OtIigcxMcylyqVPADh0WNpO2bpk2bvm3e5P163sffT1hrATj/2drDwKXjR7JzwyhhGCVEScIoTlzgAOgBBugDO8DHwA0NAJDE8SMPVA7NvTpfAgAAwAuT/DBM8n3fVMMIDgLDf70BX//jPQtc1AAASRyXJ9ICgLU9Q0oItAClIZOS3JeRKClJKZitjnFPPjf54U/OOxIAwETRRE5DnMBBKHAj2AvA9cH1YWcEWwMDwOtX28wdy3F/MVXSAAAmiiYPpyVeAJ5vkFKgAaVAKlAIlIAEEGaf5r99fmm7jgYAMGFYzo8p3FHMMLBIaVESpBEoCQqLUoBVdPcD3r359z5wXgMAxGFYK0+kcH1LDGBBGYG0gAGFRVtJYsGkDHEYH/vi5cd3JQCACYNaJZ/BCy1CghICCUhAAADCgrUQBwEmDAyABnjuzetjWsl0JiUJjUFiAYsFDAIAAUgJkTEMvGEM7ANogDgIS7lcFinAD3xav/2Iu/4npakCTneHk0+d4dDhSW5f/4jfiwUek1uy67Rfm59/6z0NYMJgXOfSWBOxfONT8tLjxXMNPM9jfX2dZvMrVCrL2dOn0FrR6XTkysrK2+12uySeuHClCFw+Mz/7wvHsFs3vv2WhscDVT77kr1/vMF2pUK/X6XQ69Ho9OpubpI9Ut155qXF0aWnJ1SYMnwGeX7nb4k77Z2aq4wD0y6cYDG+xsLBAoVBgMBiwvb3N5fc/YHf8wW+Ac/l8PqNNFD10+umZsTcaj3Ltmkez2QSgtvs5a9KyuLhILpcDwPM8bJIwtXv7STjJxsaGr00UtTZ7Lldu3iXU0/TdAT98d4v6zAz1ep1ut8vq6iqZTIZarUa5XMYPo6PLy8t7juNsitnGpSJwEahhk6KK9qpToz9O3Fsp6kw6LYSA1qhEdnyCaVpYm9go8H3Hcbqe5539H/YvZvvl5HpaAAAAAElFTkSuQmCC',
        'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.',
        1998,
        'Kleon Tryme',
        'Crime|Drama',
        'Costa Rica',
        0900,
        'http://dummyimage.com/132x159.jpg/ff4444/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Wonderful Days (a.k.a. Sky Blue)',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFhSURBVDjLjVJRSsNAEJ3WpkKgIA2hVIL/fngJv/3rNbyD4BU8QD57AOkBjOQCPUHIX2m1YAtCku64b5NZtnSrThhmNzvz5s1jesxMsDzPX5RSj7jrSBIPh4ONzvlpNps9m0IkwrMsW+73e/7L1us1z+fzd6kbUGdAhr0uv0hpUowPUTteWP9EvL9happGyo4BaoUyouurARDMmZ1YfFama13XpwCYD5mK2RZR192AGU1a2l4GLQAfdbSRW2aqO59lcNHXUSeVH1U7N7dFwkoAqqryA0CHh9tL20GUJuqZ+3A4pO322z+CW4QOq9WKNpuNuUdRRHEcUxAErdjnRpClQnFZlpbBbrcz76PR6ESDvo+BdE6SxDjOeoHsu3cE/BQGoCnu6uOO6NVAAMbjMem1pqIo7BjQ4VcGLsBkMjFdXRGn0+n/AMIwNA4QnyHHLJ1Hg7c0Te+ALo5Eia5rPRZS9wNIBbXTpSVpqgAAAABJRU5ErkJggg==',
        'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
        1987,
        'Dukie Perett',
        'Animation|Sci-Fi',
        'Czech Republic',
        0440,
        'http://dummyimage.com/162x131.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Saving Mr. Banks',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKSSURBVDjLnVPdSxRRFP/N7Pq1U+q2an5tPqSVPQjhF1hYrElJBBE9RPQY7Ev00h9Q7EMLRSAGhUIP0UNqQkaYCOVDUJEZ9iDqurhGsaDpbOvq7uzO3I/uzK7rWi/R4f44Z2bu+Z3fmXuuxDmHaYFAgDPGYIJSaoEQkvW5MAwj6+3ImLmxuroW0VgMMEnTy4q55Xg2Nr3TWYrx8bHdBNGNDdzoe49/sXveVui6vkNgp/NwREdx59wWbLINjDLBKsAIknohRlevI85dkGUZi/Nz4IwjlUqlCdSvHlsBaYfDVYODrnJwg1igugbt1wJe/uxCgjkhyRIgSch0YSmQrQfK3AqbRl5RHVh8TmxUhAJRObqIV8udmE90gEuyyJUsmMY4SxOsfzmVLwiuFZUeFq+FdG1FqE5hbXkCY6E2zCZO7iSaPtOyOLL0P2CUHuOEeQv2NoATTXBUQZyPWDJK5FV0OAZhYzqSVEEQp5GQKjIK0i3YRfKDQldLmaYuiMoM+Y568dWOqrpulKpBUENHNDyD598vYDb+AzpftQhsdltGAaHD8fDHd2Gt/WZlRTliwddw1naBJKPQE+vYIAeQOvIIHXV5uLi/EpqmWQQy0i1I25M4NDR0n5NNT2thX5OjuF6OrCyR5c3GD8mKS53m1AWDwcfCe8T0RXKm8kWWwLTQyNG3+Y5qj6Z+G55Ur87EDKX7+IlOT0mJE4PPnmoi4bbf77+bO1BZgtBIYw8z6MMtvfjWpHrlSUPDIexzlYESCYaopihFCC0FMDX1Kd7b27snO4DbgUgOC5x/s3bZ7XbXoKfnrCXTLGDCnMCW5iZEIqri9XrP9Pf3T+xSkGs+n29a9Nr85y3M3MzPAwMDbX+18L/2G23Jn5HeUDltAAAAAElFTkSuQmCC',
        'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.',
        2011,
        'Nickolas Glowach',
        'Comedy|Drama',
        'Vietnam',
        0398,
        'http://dummyimage.com/248x200.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Oklahoma!',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKVSURBVBgZBcFPaNV1AADwz/f7+73XnNveK9+2x6RVqMVGoaYjg6DsEtGhhLpEtzrXECGCYIkdO4wulZcgunQKhFpkan92iXBoWrRmI4e4tf9ue2/v/6/PJ9TfVMwPm5AaBxARARABAC3cNdlYcDbND5tw6OS4wWMkOWJKCMRAiMRADEgICMja3P1tPP/tBanUuMFj1BPKYyRY/pPVGWIkiYgkCJEso6fEwJMMXBhPQZIjdnH0FOAUzQpzF7n1De0dBLIMgY0luvbRIeogpFQXufE189NUVsjtZfQVXvyYoROAQLNJrUmrQYNURAxUF7n5JTGQRkpHOPIGhWGeeoeZ89y6SL1Fo06zTY0oIqI8xqtf8Pw5Dr7M1jyX32XhZ+DoW1ZjYim/a6u+RbNFg1QHEgJye+kfoX+E0VNMf8jVT+l0bGwuCMNlpdHT1qc/Ym1JX40oImD9OlNvc/U8lRVy3TzzPj373bt8TmvrksJjx1VuT0mKI9ayqsXQI4qIkSyyu8zCFa68x+0fyXXz9Bm1NCg88ZJ2dU5XaUjaTfnZwyrHD0t1IJBknDhDroeFn5j5nNIIPYPS+8qaG/+KyaoQK/J9q9Sqdv5rSEHM6H+coTEga3FzSu3Xz2xmK0J/qtP6Q+xsEntlzYa/v5pTvDYnBQK7yzSr5LpZ+cd2/Z6tO7944ORrssb3QnvbX1MVuVZd0ti1Lzfsweo1qQayFtp8d5pcgYXrKr1dSs+9rrH6iTQtmL1U0T3fcWCwT2jvlRT6iCQfHFJU3nPC/YfI9xAz+gZUbdvzUC+tdbM/bOmtljz6yAGxKy+mOeZvsLk4GeovKObLJpSN66CFGneK+1UfPqi2tqP4+6zh7R1aaCBF3mTtrrP/Ayh5+MxrJCCJAAAAAElFTkSuQmCC',
        'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.',
        2004,
        'Sanderson Deans',
        'Musical|Romance|Western',
        'China',
        0593,
        'http://dummyimage.com/190x142.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Hellraiser: Revelations',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAMPSURBVDjLpZPba5tlAMZ/75cvadOmzdI2jTNp03TDJM457fAwmYeLyUBU2EBRmBfzwgvFK/0DBBF2oxc68MKK4EAKiqBUGV60qY4yWbVh2cza0nXFmqQ5NS1pvuP7fl50ThG88vkDngM/HuF5Hv9H+un3vtuXGArN9fcEEngCPIX0PKTjYFkOjuNgmxaWZeEaFtI0sA2TVm2rtF68eUJPDvcVjh0aSaRiAwCo242k8lDK2zOTCqk8pJRI5eFIya/53wZy1k5Rjw/2JqI9PpbXK7hS8kvhFo8ezXBlcZkH7hvFdRSL126RzY5x6VKBkbFhpFTckwgTvWt/RBdiL9XvEzTbio4r6Eg/zY7DzOUVpFQoT8MmiCUCNOo7JBMRXKUQQiDeuTDvaa6BpjyE5uPYRJotO4BU6vYMcKXCVYqknCVRmcYXOsxufY4vF+PoP19ffyUT9c4Nhnt90Wgi5gsERWmlSKnSwHYlriuRUpHuX+RQWhI8fIZw6kFaa2lO1ie3xV8Y3/hg+otH7k+9nBlPEg71kB7W7qDqlL/HaF6hLzxBc3WJ8OABAn3DFGc/N3WAF979ZjQbD5+KRQexJYS6/uZs1n/Eal4mMn4SqzxFoEewnr+BY9oN02g/pj311pQwmq2vMqlYN0IHodHfLfaSN3MYlYuEDzyDWfoE4d/CH+rD61T48Ifg1ENvfr2s5d5/yctkU0cj+yKUWw5SKYJ+QaX4LTu/XyR88HnMPz5G8zvYO2OU5vLMhl5nxUgdB9ABTFtp5XqL1fIupjVEfmaSE2Mlsk8+h12ZxBfwMLeTlOYW+Mw8i7QFmrajA2gAruPgSIXtumwuXODpZA1JnHLhIxQmu804a7mrnN86w8ZuD7om0AOBg/9oYGMYNiNDXeyv57j3+KcsTb3N8k/zdI0eYbdRphB9jaG7h4koRadt4No2dwzW8tdudKq1jL+7l0ytin19mtSRx9muNVhdWGIm8CrV1Rp4myilMNttqhsb5wHEv+/84hMDxsR4TH84m8LzW/NGtXb22XNXb/7Xnf8EvI+SIusIR2cAAAAASUVORK5CYII=',
        'Cras non velit nec nisi vulputate nonummy.',
        2005,
        'Flory Grime',
        'Horror',
        'Ukraine',
        0570,
        'http://dummyimage.com/185x208.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Made in America',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJ0SURBVDjLlZNbSBRRGMe/2XRWZ2/D7G4sSuYaKVurhMZaIRbm6iaGERSSbz0EPfTSQ4j0ZNRLQq8WPaQgPfQaIWmUJWwrSYolkW2ul7S0Rrbcy+zM7vQ/EovJ2uXAj/+c833nu5xzhtN1nXKN+h6Jc1Sqma/fhPHn574cpG2GYTuDt9quHbe0U0vRiZrqXvHZfwXoHqnTfaZWg8ceII90jPy7mo5W9Vjv5fLltrZwa6RJLzbVkstWQys/FiiakEng7TQ6N0iD7x4vhK+mSjb7522NmFb56PRqKF+OyYLbcQQlFtCT8H0aW5ygHUTiX1uYX75WL690C/PRScwyZDDoNCtPU1vlKB0ueGBpvXy76o8BTpUmu1x5CpGWT6Rn0CMrk6fIdIQcXJwaSjMXfjuDqampXk3T6gGpqsqDMq/Xy918eoaUtEJriSjF1QQdiHcmTjYcKhweHo6nUqk5RVEIumrARs3pdHoQzIOFKzzPc8Fg8GWj2EW1+qX209IN8lPn2d0OoXBoaOiuyWQSksnk9YqKCg+ClHGhUGgPx3EfYrFYMQLIYB9YgnEnywTc+I5Ai6CfoS6wZjQal2RZfmTw+Xzh9fX176jgExxaYBhHBr8gCJPQgNlsfg1thr6FPWCz2Zg2ut1u1sKLjXcwiIHJeRhYBeXQZWgJ9COrAMyyOWDrTpyTDCLovm3jFpDhzqYKJlkGq9X6imUURZFVFJAkaQLzJugbBGlGgCUwln2J/f39KgwWOJWy04WWQ2fAXvAezm6wCFzIvB9c7Ovrq8u+RGzIAwk4068ryoJNWdh149ApnU4/zPkv/Mvo6OjgmQ4MDKR+Apt6owU5Oz7IAAAAAElFTkSuQmCC',
        'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.',
        2006,
        'Andree Samarth',
        'Comedy',
        'China',
        0452,
        'http://dummyimage.com/116x196.jpg/dddddd/000000'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Sheep Eaters (Lampaansyöjät)',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJVSURBVDjLlZPbS5NhHMd3tbvyov6HIJRuhKAFgRci5GXYVQkG0c6HJGvD1FVMjdxC22wlQ9iG7uBh0rtDmxtb77vFoh2c7KgMtiGbU9xdgezb3hf0Ii3cxZfngef5fn6H5/ewALD+Vv8Upeh7HfzdM+pb4QwT7PPunOg8M7tlPh63JtE/4UM3f7WnLUDL3NE7vgmFKYbeF050Di3dbQvQSrvjzogTIm0Yt0WrePp25VNbAHcgrLopXMOgyo/uR8v4bAnAbrdLLwSIRCLK1HYaHKEdnQ9MuHZ/Edv5MpYcHljc1K9Fgvo+uxqanLYEr5wBhMNhZTqdRr1ex6jOBz8VxzONC+VyGQcHB5g3rcFGZWH+lscrc9ArWdjseqzzXWLMFEWdmnO5HEwbEYzpvmKZ+IFKpYJSqQS/3w/l+4XmlCXYnHGmMfTBOzyg9lxmkSQ5RpsbjQYKhQKy2Syz7u/vM0Z6T5+73W44nU7IlOrmS9tPPJn3VfsmXVdZLfKbra0tVKtV7O7uYmdnh8mEBtCwVCqFRCIBgiCg0Wggk8ko7sdNCMwJ3JogRpgSHA6HOhqN4ujoCIeHh6jVashkMkgmk4jH4wgEApibm4NUKqVEIhH74awXrfSPbyi+dJ020Wg0vguFQtjb20M+n2eixmIxBqDX6+nIpFAoZMb63owHHCXhOvOMWq1W7fF4UCwWQZdFN9RqtdKRSYFAcPonrj/fGPznIKlUKvX6+jrTfZvNBolEQvL5fPaFJ5GWXC5XGwwGiMViksfjtfcbT9Rq1gCXy/2vmdYfaGviUGKvapgAAAAASUVORK5CYII=',
        'Suspendisse potenti.',
        2011,
        'Emerson Romain',
        'Comedy|Drama',
        'China',
        0701,
        'http://dummyimage.com/121x214.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Play Motel',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAK5SURBVBgZBcFPaJZ1HADwz+95n3e6uTnREGdljRKtGCYiHTLxkIUmQeeCOnXzVnQIoi5BQV08TMo6GIiHiKI6ZEWgszzEmtpqSDP7s9ycm9NN977vnuf37fNJEWH/G6df6l676vki2YXVSCAhEpFVOU8uzMX36daNV88MH+oApIhw8O2zZz45vOuhokjrgoYAIALC7NKKEz8vmP67fee3XyfWjwwfakMJRSNt6yob68avaRQpkYhMHVlVheWV2r6tffYPjNi4eLyncWCodf7jI1Jr6sUSUkq9EdHoajQkIZALZOpEIWlPf27r4jndQy/oH9xp4c9tJk4de7eEIEGBlAgJREqKRP/yKXVcsH7r4+Ynf9eVOvrWbtK7YUt/CRBB2SBJIiW5Doqkd3nEllWj+gef1r56UldP8tfYhJt3UhTtuR0FRBAoU6FISYFGkaxePG1LfKv/gYNa/30oNW9o9vbpzvOOXj+wsvvwZ5cKCGSkRJGSIiWtK19af/uU/gef1ZoaVjRXdG7db+bMed173zJVD2QoIFdEkBG4fflrPYs/2vjIMzrTxzS6QvvWfWZGRs3tGZY2bFdnoICcQ0QQTI+e1L3wk5W82dWLR2Qtt+fvNnNuwuLeo1LvgNXNpK4CFFBn6iAysxc/8vCel636Z8SlL84a+2be+Hdjlh57R9WzWaDZKFSdCpSQq5AjvPlLx9DkrM74VwZ3POHm7JzJsUk/7PvU9Sv3yipwYlPTSjuDEqqqVtcMrG0a/+Oa9z8Ytnv7oOXNOyw9edyjffeIIIIL1yqRw0qrAiVU7ZyrnKNTS+te/9flFCYlkJdIS5UcRJEUOSnLlKs6V1DCSqueWdPVuOu1oc6aiCgEGdDfXYIIuptJSnKzkRbrKk9BCSnFe0+9cvq5lNLOED0AgkAIIEAr5zxaFk7A/5IUWNTkV3l/AAAAAElFTkSuQmCC',
        'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.',
        1994,
        'Cheston Evitts',
        'Crime|Horror|Thriller',
        'Indonesia',
        0627,
        'http://dummyimage.com/102x178.jpg/5fa2dd/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Golden Earrings',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAI7SURBVDjLpVPPaxNREP7e7uaHhmxD09AaDzYgGCIBoeBFpJCAKIoXT54Cgh6EXL0U/C/EmyD2ZHMTTBSN6akXoWiIJU1qTU3L4kZjk+xms5vNurN1Q1rtqQMf895jZr5vZneYZVk4iXE4oQnuoVqtvjdNM2UDw+EQhmGMoev6GIPBgHwxk8mkKY9RC3byotfrLUUiESfoqE226fF4UCqV0Gg00tlstugosBkfh0IhSJIEn883TppMpHOz2YQoiojFYkS6ZD8XWblcdtjD4TA6nc4hudQKJTLGwPO8wx4MBhEIBFAoFFCv19MCsZN06pWC/H6/A5d9rMTGqL4MfrcJVbyMZHIBlUplSSAmRVEgy7IzIAoejUagYZJ372J7FfHzGqYS9yGtPUG/daCSCqSIiS6UZLfkSOY4bqzgLNvAQrKLqQvXoDTyOBWcx5y8isjQSHHESr0SqIAL940w65MRSt6Cqdbgn4lCOA1Er17E7cQ+BCrgJpHUeDzueFc+vVu9rzDa38DxLTBOgVdsAZoKVRocFKAv4AT+HZjbN7MTxfZreObsgsMKuNFv+98NwjJ0VFe2kduahqBpWiGfz1+f+MscH+W3kBC/48zNO7D0t2BmF59fdWF2ZPD2jHK1GexhusCOW6ad3I312St3L+mtpxCEKWwUe+rHNSl7Tuuv+AM8Fp/vdA/twj9bxkNn/C54XwRf3vzsfVr/8fDBcv3Fsct01Pa2W+86+x/m1V9Kf3NTfnTvWe3l/+L+ANeBhMdSVgxaAAAAAElFTkSuQmCC',
        'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.',
        1992,
        'Penelopa Grestie',
        'Adventure|Romance|War',
        'France',
        0541,
        'http://dummyimage.com/201x129.jpg/ff4444/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'The Hearts of Age',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHFSURBVDjLpZI/aFNRFMa/m/eI0eBUBNuYhgrqICg4l0Jra0AFp2C7BMFBdBKngiCdxM2tHSIUwbUIkRpIh1jUVYoUB8HiUEuLUPL+3L/vnnvdooIpqT3jOYff9/Gdw7z3OEqF/QaL69wLY5Eqg0goPL9dZv/ay/UDCG0xMQJcLYXopuLwDmKpIWUIpQhR9B+Abqqw/EkgSgTiWPYFsKOGmDto2Gq1fLPZPFCh56DT6XjnHIgIWZZBKQUhBKSU4JwjTVNwznu9RqPB/srAGINqtcoGsV2v1/2hM/g4V5m3vHvfclGmwG8DWLzWts/Yw/W7nhyBnINzhKXpVwwA7ryteW01lDa48mUPt5KCOT9Vyx8buwj5uY3N92t4ke0iZ8liunQTM2duICPbU1SZwkRpEuOj47iw8RXnpmr5wrd3YC/ncGLrNc5WhjC5EyO0RCBn4TzBEvUAUmnEJkJqElyODQqnx4Drj34/0MIwTglCaMnizdYKyDmQ+wOgFVY3W9Da4FIxgNhYRbH5AFruQgBI4gD7x4PBQvwwW1rInyw+Lg/ZMMxtI/lp8X0voEz5J4NfYXZ0nu/v3AuIVSjwPzywVG3bp78AeAkDORpY/RgAAAAASUVORK5CYII=',
        'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.',
        2008,
        'Carleen Drayton',
        '(no genres listed)',
        'United States',
        0876,
        'http://dummyimage.com/250x160.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'God on Trial',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAH+SURBVBgZBcE9i11VGAbQtc/sO0OCkqhghEREAwpWAWUg8aMVf4KFaJEqQtAipTZWViKiCGOh2Ap2gmJhlSIWFsFOxUK0EsUM3pl79n4f12qHb3z3Fh7D83gC95GOJsDe0ixLk5Qq/+xv/Lw9Xd+78/HLX3Y8fXTr2nWapy4eCFKxG7Fby97SnDlYtMbxthyfzHO//nl85fNvfvnk8MbX5xa8IHx1518Vkrj54Q+qQms2vVmWZjdiu5ZR2rT01166/NCZg/2PFjwSVMU6yjoC1oq+x6Y3VbHdlXWExPd379nf7Nmejv2Os6OC2O4KLK0RNn3RNCdr2Z5GJSpU4o+/TkhaJ30mEk5HwNuvX7Hpi76wzvjvtIwqVUSkyjqmpHS0mki8+9mPWmuWxqYvGkbFGCUAOH/+QevYI9GFSqmaHr5wkUYTAlGhqiRRiaqiNes6SOkwJwnQEqBRRRJEgkRLJGVdm6R0GLMQENE0EkmkSkQSVVMqopyuIaUTs0J455VLAAAAAODW0U/GiKT0pTWziEj44PZ1AAAAcPPqkTmH3QiJrlEVDXDt0qsAAAAAapa5BqUnyaw0Am7//gUAAAB49tEXzTmtM5KkV/y2G/X4M5fPao03n/sUAAAAwIX7y5yBv9vhjW/fT/IkuSp5gJKElKRISYoUiSRIyD1tufs/IXxui20QsKIAAAAASUVORK5CYII=',
        'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.',
        2002,
        'Antoinette Frazer',
        'Drama',
        'Mexico',
        0642,
        'http://dummyimage.com/182x217.jpg/dddddd/000000'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Mr. Morgan''s Last Love',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJhSURBVDjLpZNLSBtRFIaVIvFVsKSCG7UuWkVcGIiiGxE3YgUhgvgIirgJiIssspBK6cK0iIgbCyVgNyWGqkiLK63KiG100ZbYQiUP8zBxJuOMyaRJiCHB/j0zC0GsROjiwOVy/u+c/5578gDk/U/kTAicnDwOBoPP/H7/W4/Ho+N5/t6dAU6X63mY5yFJkhIsy8LpdHIOh0OdE/Dt8PAlGw4jk8kgnU4jkUgglUohGo2CAJL94KDwVgBjt7/yh0KKOJlMKtVFUcTZ2ZkC8ni9+LK/b/ongGEYs5sSZLGcLFeUxeRdsSCHeH4OZm8vcgPgsVqnue1tZEgQj8cRiUQUcZisnJ6eIhAIwEtw+X5jZwfXAOGpqenEygqyu7u4mJ1FjGEgCAI4jkOI7NAUcHx8rABpMlhbX3ddATyDgwZpcRFZol7MzCAxMYHfY2MQlpZAI4TP5wONECcklN9hY3MT72y2SgVgr6pSecfHkaXLlNmMOJ1jo6OI9vdD7OlBaG4ObrdbaV8g8fetLaxZLANXY9yoqXniNxqRWV1F3GBAbGQEkb4+iN3d4Ds6wLW2giVLAj3ij+VlHExODlz7SO8rKh4dUbW0xQJJr0ektxdCVxf49nZwzc0QCBCj8JMtZnh44MZXXigtzf9YV/dTNBr/JE0mCJ2dCLe1gdVqIRBAamqCr6UFX+vrdbfuwkJZ2cN9rTYo6vWZ5NAQBALEqYOoRoNfDQ34VF2ty7lM8yUlD6zl5R+OGhslVqO59NbWXn6urMza1Oqnd97GFwUF+fOFhdo3xcWm10VFunmV6n6ubf0LxSvsH2lz/wcAAAAASUVORK5CYII=',
        'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',
        2006,
        'Casandra Gass',
        'Comedy|Drama',
        'Ukraine',
        0588,
        'http://dummyimage.com/163x185.jpg/5fa2dd/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Rubber Johnny',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAH5SURBVDjLjZE/SNRxFMA/7/f9eadWnmGBIl3fk1oKGsMh6KA/Bw5CUzS0NbVlkFs0RATh0HLi0CDUEmgQtCiBJA05hf1Z6pQT7Wqw4C697s7vew2BKYreWx7fx+PzPu99xcxoJvL5vFUqFYaHh2VrPaLJUFXm5uZ21OOtj7GxsREzy4pID3AEaBERVBXvPXEc7w2o1+tDuVyOZDK52RxCIISAquKc2xugqqRSKc5OHKYtVqoqgHEo0WC8/8f+BnEcE0JAnHHnvBBHhgAj8zHluu4PiKKIRqOBREbCAWZEgDgDozkDVUUc3J0FExABBMzC/gDnHKrK8zMfUdXN44UQSLlU84CJylOSySSZL6fo6+uj6/ET1i+lGVie4PWFUQ3OloH85amNh7sCBluv/puc+Weweu4onQszZG/cJpk5LdX5qWOfZ6fvT19sWYt2u0GhUEBVWVxcxMxYe/OMk9krtBZmkPFrtC+8wB/vciZ2a4eBmeG938whBBLlVVq7MzAw9H/YvR6cit/xjapKqVQinU6ztLREb28v5Y5O1t+/4sDLm9Sq31kHKmVHcHzbtoKI/K5Wq3jviaII7z2JRIJU9jqf3r2l9KeNsmvh10/h64oEg/w2g2Kx+GhycnKwVqshIlvB9FtH94nih4PtDesILloxbDQ3tfHgL9Xv6UA7GgE/AAAAAElFTkSuQmCC',
        'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',
        1996,
        'Viviyan McGall',
        'Animation|Horror',
        'China',
        0744,
        'http://dummyimage.com/136x250.jpg/5fa2dd/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Goldfinger',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAE4SURBVDjLY/j//z8DJZhh8BhQXl5+oLi4+EBubu6BtLS0A/Hx8Qrh4eEH/Pz8Dri6uh4gaABQcwBQ84eUlJT/QM0TQGJAzQ1AzQtsbGwUiPIC0GYHoOb/kZGR/4GaC/DZjDMMgM6eEBgY+N/Nze0/0GYBkg0A2iwA0uzi4vLfyMhoAskGgJwNtLnA2tr6v4GBwX8FBQUHkHjIlAcKpaueX2jZ/PKDb9fdBgwDQDZDA6wAxNfU1JwAdMF/CQmJD4KCggbJ8x5vAGpU8Gq71dCw/vl/DAOgNh8AORuo2QBo8wGg5gNAzQe4uLgOsLCwGIDUJc56eCFl3qMHZCUk+4prDWGT7l0wz7lkQLIB1kVXApyqry0wybggYJh8wUEv/qwCSQZ4t948kD734f/kWQ/+h028+2HwZCYAjxChYziQ1VwAAAAASUVORK5CYII=',
        'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',
        1995,
        'Elton Pocock',
        'Action|Adventure|Thriller',
        'France',
        0572,
        'http://dummyimage.com/150x100.jpg/5fa2dd/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Super Size Me',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJ9SURBVDjLfVNLSFRRGP7OeO88fJAMGmqikAaalbUIJ3NRROAiwmjdQmqXFdRmaOGiB4nrMmjRpk1LIQjK7CmmCFHWIAguMpGhnMGZud7XeXXOndF8YAd+/p9z/+873/n+e4iUEnrx6wMSBw+BjY1BMgbJOQSlEKVs9vZCvnmPivFXBJuWsV5sBslNQKH317NPsX39I6AsIBGeFzQHRDqXamMXgtAGgfooFRjNzeCaRIXO3HVBWlshbEf1+P9R4NM7JDM3GDluIXYirL6UlfYJmO3Cn0mBq55dCcLnFpfAQhbtuFTphZvAeUhdQZ3ObJjOIqKh5xbp5kvbCYiegnyW6FLlqH/sdp3nR5TcVTB3TfniKhIlm5QhEiUon3+cBpV95o3U9FYPOEuytst1HouB2zkltQiU1IdwbbDcCuxsDm7TxTpR4MkdJkrBemjFfginUATqU5kaHfWCWlAHLJ+Bw8oBj/fs9EDIuJBlgWShCbieexHM/WL+7OUws5xGPt5RU7h/Or9qZYdfPvh2r2SiLP5EjG5I3wju46OTwUK9gVPtJ9EYP4B3qdGqqR+f7iYGGqpLV5BZQi2lhG+VrlUokvG1NI62dYKHODrrz4ITisThbg29WjKRThi5ORDDVBz+Fuk6/lgrMEklzrdfC9pvnXmClr1HdBktKnDEkPHladokNkJmVCkRgQ/6DUCNOa8MTC1PYmisPyAYet2Phd+zunQDAuPm/LRw+GDk7XA65v+Euaca4Zp9KhoQidfiQm0jpmYnEVaev/g+gjAxMPH1g4Y+IuvPOaBLtnQJiyVBRY+QJA6uBZCsYJi4UsULv4joU21VKgoqRqYeLif/Al7ruK6zYN/dAAAAAElFTkSuQmCC',
        'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.',
        2000,
        'Lib Spawton',
        'Comedy|Documentary|Drama',
        'Armenia',
        0253,
        'http://dummyimage.com/233x150.jpg/dddddd/000000'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Basic Instinct',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAI9SURBVDjLjZM7aFNRGMdTA+Jg8UFx0qGDi4PgoERE6qCIUJxEwcFOdhPEdhB0FVQsmRRbaM1mhdIhtUVBwzU2mPf71bzfuTEUb9repiVNrr8rNsQaJcOf795zz//xffccjaIoml3IsrwP9KnPlUrlWOe3f0GzR0Cr1mq1eqhcLk8Xi8X5fD5/ricB1bnD/Qnkl7lc7mEmk9lIpVKWeDx+o6vA79gqtGotlUoHIOcQuZnNZvWQX4HxaDSaDIfDbwKBwP69An2dgHyH2JtASCaTfoSGVlZWPodCoXuQjV6v1+d2u093nUGhUNAS20b/C7huETsM2RiJRCZIdtHn8y27XK5vDodjuasAkS+DFCk+pdNpN2QRZxmBEZxtfr//fiKRuG61WtcsFsuDvwQgzeO8GovF1MFZqRHaMHo8nh0wS/RxyF6VbDabi4IgDLTJEE6hnqDGcZQZ2A9amsJVJMlHu92+ZbPZRNYvITAKOWsymUbaAvT7mknXgcSmPANbJfYGKT7gXGRNUAUgrzmdzq/sG263gPFxXDI41yA2+ehiYGUGtslmiRROyOr7AjM5/8dvbL57q9teWvwiLr6vBYPBdZJ42NjEVaKW6LlGnWUGg10P0s7MtKE1N6c0nj5TKhN6kdg1XOv0vA5xivrfO6HZfvRYak1OKi29Xqnfuq3Enr9oEHOJI3yyp8skXxs2NO6OKq2xMaV+5aoiXhgSOJH9vZB/CUhnzuq+nxg0FI4MSLmDhw35/qO63cvVi8BP3IoJNAAt5FMAAAAASUVORK5CYII=',
        'In est risus, auctor sed, tristique in, tempus sit amet, sem.',
        1989,
        'Kermit Iacobini',
        'Crime|Mystery|Thriller',
        'China',
        0300,
        'http://dummyimage.com/121x236.jpg/5fa2dd/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Dark Command',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAIASURBVDjLpVPPaxNREJ6Vt01caH4oWk1T0ZKlGIo9RG+BUsEK4kEP/Q8qPXnpqRdPBf8A8Wahhx7FQ0GF9FJ6UksqwfTSBDGyB5HkkphC9tfb7jfbtyQQTx142byZ75v5ZnZWC4KALmICPy+2DkvKIX2f/POz83LxCL7nrz+WPNcll49DrhM9v7xdO9JW330DuXrrqkFSgig5iR2Cfv3t3gNxOnv5BwU+eZ5HuON5/PMPJZKJ+yKQfpW0S7TxdC6WJaWkyvff1LDaFRAeLZj05MHsiPTS6hua0PUqtwC5sHq9zv9RYWl+nu5cETcnJ1M0M5WlWq3GsX6/T+VymRzHDluZiGYAAsw0TQahV8uyyGq1qFgskm0bHIO/1+sx1rFtchJhArwEyIQ1Gg2WD2A6nWawHQJVDIWgIJfLhQowTIeE9D0mKAU8qPC0220afsWFQoH93W6X7yCDJ+DEBeBmsxnPIJVKxWQVUwry+XyUwBlKMKwA8jqdDhOVCqVAzQDVvXAXhOdGBFgymYwrGoZBmUyGjxCCdF0fSahaFdgoTHRxfTveMCXvWfkuE3Y+f40qhgT/nMitupzApdvT18bu+YeDQwY9Xl4aG9/d/URiMBhQq/dvZMeVghtT17lSZW9/rAKsvPa/r9Fc2dw+Pe0/xI6kM9mT5vtXy+Nw2kU/5zOGRpvuMIu0YAAAAABJRU5ErkJggg==',
        'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',
        1985,
        'Loretta Brinded',
        'Western',
        'Poland',
        0451,
        'http://dummyimage.com/198x246.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'This Is My Father',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAF1SURBVBgZpcE9axRRFIDh99y5s1nHjawQVEgQGxErIWgES9MGBDuxlrBVfkG6lBEsrUQEEXu7gNgIUSTBQrBSyYdgFjXMktmdmTvniLCB28/ziJnRhqMlR0ueyNrTLzY7A0UVON/r8PNojDjoZQlqwt98zNvdw9vfX97/yJQnMi4m3F26xr3FHm+2D1h/eJ3Yi3dDVOUDIEw5IkVZ82cU+G/r0y9OTQLkJQyPK0SUmCfinJAY1I3yeLCIqmFAgpF5KMuS/KQi5ol0U8ekrNl4/QMnEBpFG8UAMwODLFVinkhQo2wCiUsBQ2gQEUwNMyWEmqoKxDyRUVGTimewMkvQCnBgYKJ0fYfNV3v8zk+IeSKNGgkpyphnO6vMZZcRHMNin0e3nuDoUpQVMU/E+4Qrl+Bib8TyjSX6nXlwcDyZ58LZQNYBL0JMzIxTNwdb768unLnTn+nT9ecIWiOqiDWoFHzd+8ZRXvP5+QNhSsyMNhwtOVr6B/fLolbgemG4AAAAAElFTkSuQmCC',
        'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum.',
        2009,
        'Corrina Troup',
        'Drama|Romance',
        'Brazil',
        0300,
        'http://dummyimage.com/211x179.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Nurse 3D',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAALrSURBVDjLbZJZSFRhGIYNRyK6iC7aLiK8qG4MifZuylxaVOymjZQKDYbEJE1nskITEpeCFAy98KIJl8LUyn0Hzd3EbVKcxlnOuMyZcUads4xzznn7Z4JJzQMv3+E/3/t87/n4fQD4rBdjqIlmNOV1zHSJYXk0n7MPZvK27lSrtSNhdKlLkbG53/vC6qoPsNovDTzVAJelF8LqL4icHhJvgGCfAj9bD2tLPBaqb2ot7YqADQBG/22nY0Y1sEZ3QXQaiHTEPAmRHYHg6CfqJWdqSGs0VgbegVIFWxfblfu8AIe6KIc31pIGE0R+hlQKkmAHJKdHkmAjsDG4lmsB0Qrz93hQn27XewHLw9mUyzZGemfIpFlILgsxLXmMHrlo8k1HAI1EFeBNg9AUnOW8gKUfz50iOwuB6YPADpP4ahJ7HMLKCDEMkB10w7XSDN78HpwpCaLDgKmc45IXYGlPNDoX+8n0CXDGF2RCFmxf78NWJ4etNhaWsghwVCYYzR2s0bngDIOYzjvxL4GlU5lt68sjcS3g9AqYiwPB6lOInoLRyklNxlzWDqxOhkGSNDB9ToS2OKLDC7D3ZMgW6+RTqxOlZIEa0B/Oesws9QiMIQasLgkL+XshMp1Y/lkJdcZRnqpKPLzhHtBtysD5ymh6dbwM9qqHfwFkstvM6p5gOuM0eu4eQuslGVqubrc0hfoqNwDcMjelnNSWP5ifKwkD1x4Oce4yRFMQ9PnnMJp8BlzdW0jqRjAVSRiMPyY0B8sSfDZfzY7y1+GFr2LXPhamoSj3PN6kn0LNtV1giRkFkYBiN5DlDzr3IppCfLX/Adx6qZAbVKVlUKkqUFRcQmL7QRquwvrHlr7f/TvSlgDF43s9La2tMJtpDA0Noz5qDxwlsQAx8ak+WCLSy31B9kBtCWgpz465cf0KExoaIgUFXZCyowJc/XFHxDmFP8zP/PA7bhvaImVCY6hv2paArdR966CSTJx1xybV6Da7z/8A2VoHSyUsj6sAAAAASUVORK5CYII=',
        'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',
        2012,
        'Charleen Boggon',
        'Horror|Thriller',
        'Estonia',
        0000,
        'http://dummyimage.com/100x236.jpg/ff4444/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Mark of the Devil (Hexen bis aufs Blut gequält)',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJfSURBVDjLpZNrSFNhGMelD34op67Lp4I+RKBREkUNIR2po7LOztlxbY1amstyXWw2m06b6Ra1llpqBJrlJdNFVyqxixZmIQ5npVE20DCkYqaDDBVy77+zDQbCmEUffvC8L/x/z/Pw8oYACPkfAl5mKmWl+cJFMMTzoNsUBnXsQqhk4qt/JVCrUosMVBQs2yJg5igWhUMbH4a0uKVQ7VWUzSnQswJc4II6LqT1Eg6NkI99GyPArF1M5hRoBZGkpTIPI60WdFYexO4NfKTGLoEidhl2rotEmXbXgqCCqj3LXa6P7Rjrvo7vr2thr8/B4P1ijPa3ojFjxURf3aHQoIJqxWrbuK0Jzp5bmHzbzGH11uP2ZlSnx/QEXcGaxM5/tnlrx5NMAaZ7ajD1/p6XyTc38FwjgFWY/KJRKOUFFJQnpfE7RFSNk6Ux5fiEvmPJaMnd7sVT/7J14ytDozMx+WJ9nCJylsCcIp03oNHWfpMwgOMD0PUSaKoFrlSAVJwDMRfCfe0ySPcrfGEY8iCBKq1LpEL9grYtjJGky4BHd3xwQVRagBIjcDofKMgGjh8AuVQCd4kJP9Nk5K6IPusX9J6MmnE+zANOnQAsRT7OFPjO+iwgOwNQK+FWSoAsFcYeF6IrJ3raL3hniCbjT40gSm6FqnIQLkg8XXWHQTT7QXRH4OYm8HT/IWfhajPBlruK+AX9DUf1dv3K3zOcYDSFBs4XB2SEZuCgGPQWxkxzGdOsV/hsVfPa5dI1TSLl8AArJ0M0iyGxBIOUBI4dLPrFMnI7QTHRyqasH76p5gX9jf/CH9NZtVjmGMuRAAAAAElFTkSuQmCC',
        'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.',
        2004,
        'Correna Sposito',
        'Drama|Horror',
        'Russia',
        0757,
        'http://dummyimage.com/195x120.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Pirates! Band of Misfits, The',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJaSURBVDjLpZM7aFRREIa/u7mbNW5IjEQ3WQlBIkaLiBYWvkBi7H0EDGgjaiNY+uoECwlop2glWGknNnZBIRKCZMWooCz4Im6uya5iNnsf555z5lishYVKwCmH4Zv//5nxnHP8T/l/al66X3VWhNSAtUJqBGWEe2f7vBUBVCrs3bIaI4I4MNbxaKa+cgWxFlIrVJcM2jo621poxLJyQBgbUiMkWjDWofwMy7H5M8BdPt9MUQSnDU4boo0XUakj0Q5thFVZSz2x/1BwYARE8KzFs5blWUEZR6ws2kJb1lH/mwWnDZ4x8KIERsO27TTilEQLUdq0kLR6mFj/BaDSJkAloA1ow5JyKC3EStDW0Z4TJBTOTZx0OjWkqUYnGqU0viSKjDGQKNCaJIoohDN45a/sKqyl/GmRSIZpTVN6ZjZRXF9ksbaI35Pj6dJjfIl/bVYKrRQPXr/h0JZ+jh07QRiGDAx8YWLyGQf7YPTwKFk/SxAElEolzDvwJUogTSGOmap95/1AF0eHh7lw9Q7fPpco9vYwNDSEDgNuXL9BEAR0b17H6SOn+Dj3Ad9FMfyyMFtfJt/R0Qxn63Eab6cYGxujq6uLRqNBtVrl5u1b9O1szqzpWIMvUQxaw+499Lx6zXQQALD88i4ZTxgfHyefzzcPLAzJ4KGfR9AHc5UveFdGrjnRBqcMdfWDSqHCjv37KBY30NmeYWFhgXK5TC6Xo7+/n0KhQD1MmK9UeDI5jff7Ow8ODrb09vYO5fP5h8VicV0ul2sBMrVa7QxQ6e7ufghklVJ2fn6+Gobh4Z8+rmPjNq74hgAAAABJRU5ErkJggg==',
        'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.',
        2005,
        'Darice Docket',
        'Adventure|Animation|Children|Comedy',
        'Portugal',
        0354,
        'http://dummyimage.com/200x237.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Marvellous',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJISURBVDjLpZLLS5RxFIaf7/NCZqiZYYW1sEbTKWsTDUS0sFpF/0K7aBftulCbTIQWQi1r0aK/IKhFIBUodlNKKtBIy2qsKUPLacbvdy4tRmuhSdDZHDhw3nOelzdyd/6nypcbXnx25oWZplXNVfXOpUzvkb8JxEuXT9djpFvXtJKqSUWimlnpgyUC53f3fEskyQcP5JM8IjKykkDk7nQ9P+tmiqqhpe5ta7dHYsLzqZFZEVVVjUWE60dvrl3igZrSUp3C3DB3HIvUDHdoX99eq664G4/Hh5Y3UVVRN8yN7NwkM8UZxAVzJ47KMHO21qYQkeURzj085apKTUUtjdWNvJoeQV1LOF7Cqsy9ZT4pMB1vQkQRUW4fvxvFAJcyvVHPvitRbi6HmhIsEFQQE4IJwYVCmKepoY2Kwhsy6T2IytIciCjqiqhS+fktZglugoqwsb6Ftg17+VHMc2/wGlq27Y/Ayb7jLqLUrapDzQgeiC3hUPrYbwTDyc6+Z2fTPuaSAkOTD+joimvLFy+nG9tQnInv47TXd/Dywyjqxrvp1wQTxAJBA9/nf7B7837mwk8eTfRPlwMEEQTlWW6YHQ27GP80QVGKiAqNNVuQBTOnZiepX7OB4fcDDLzp/5IIh0sfBEHNSK/rQNTIfp3Cpeg3Bi+TWBIVJWFrQ5pM82GevOunb+zup0TozHb7qwUE4cnYU0QVEUFEi7dOjFcBHLx6QCtQhj88jKO4ivtjfR8TozPb7aO/c/Av1XwhyquVrS6YNue6fWJx/gvSRpXk80tR+AAAAABJRU5ErkJggg==',
        'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.',
        2010,
        'Bidget Athersmith',
        'Drama',
        'France',
        0343,
        'http://dummyimage.com/173x242.jpg/5fa2dd/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Ip Man 2',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJcSURBVDjLpZPvS1NRGMfvv9Db6FUvIpDqLwj6AZER1EhBkvTFTALNlWJrkwKRoWKGjZltaUmuYmsIq7SEtrSt1qakzh/TtunSdq9j8253u3fL1vh27t2KNAqsAx+ecw7n+z0PzzkPBYD6HyjZZVNNpzXINz0OQP2IYPwI1YMFXOmfQ+O9WTT0eVFvmMQl/Qcobo+jVueG2uDkRZ1koLEEc9qRNWwXRddYTjIQb/4XqjtGIRmojX6k0+ltI2+15Q1UA4sQBAG8BA+e56W5w+H4jQmbDgsPy+C3ajDVdwzT3UUVlFiwZDKJshbvT1JkLQp+HQJtBWNXIuF9DqTCiHstcN04vkaJ1U5wHLgEgUsUIrfJQKCHwM43Y2P1KZjRDqRnBvEt5MTM/eoMJT4Vy8YRj8elKBFnSWTJHovoEhHPXkMu7UQ6WIt1z0X4BuRw6+XwaGV7qIbeacRiMUQLiPNYNCZl4LF1g51RIZdxQQhUIrNSjuS8GqH+06i73psvoqJnApFIZFMNxPXrwXYw48qCuAKZT2fBzTZhyXASjM+JkkZL3qBO5wHDMIS1QmTge2fE/MtGkvYbZJbl+LJyDgmSSUB/Al85WjpzpsGcN6jVvkc4TBPCoAnuoR7MDasx/aILn92lEJbLsT51Ff67p7C6OAmaFs/RkNWb8KMXTBduOqSfVdVmh7n9KJAMYcFQArt6J97eKcZw8yHUqPQk7SfkZhOIRsQkGWztrpbzRdkNlw4b7ltwaw7DXLUrNaLaf+CP3bh1o/Tgjkxr5d6sra04+6rzyNgz5b7df2vn7z39IYTVO0xbAAAAAElFTkSuQmCC',
        'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',
        2011,
        'Liesa Neild',
        'Action',
        'Honduras',
        0629,
        'http://dummyimage.com/162x232.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Kings & Queen (Rois et reine)',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAI6SURBVDjLpZJbaJJxGMaHgdcFXURdBLtZrGitiFh0uhjRVRTVWI1as7mQakhjyyEkRAcaHSCrj0xrWGuuoVsr25qzfeYObh6yJJdzavoZs3Sy8PhJ8vR9EoHkotXFA/+b3+//vC9vEYCi/8mvh8H7nTM8kyF0LpoacCazLxzxbM/bb1S3OUo8GQtz/iggGfi1O0NaAzS8kQwCURqBORrTX9LQf5jHQ3KWlA1RnAUFeneGsATSoKIZOGdTsAWSMPuTsFNJeL7SEOoF4GtrUKuuShUUvJpKUd4wnYMtDDj5KQGTN4FRTyInOvH8MDonL6BKuRcFBey8fqYyC0/4Ehhn4JGZOBp1AtT1VkOkrYfMKIKgsxq7b+zErssV0TyBxjaf9UVomBh4jPnVyMCG6ThbGfKRVtwebsK1wdO4+JIPce8xbBGXI0+gMkWoqZ/137jjIBlY/zEGnqoO+2R7wGvfj/N9x3FAWonNojKUCUtTeQKlMUT02+fgCqVzs7OwzhnLyd4HU2xlCLsOYlPz+sI7uK8Pcu4O+EnNRAhWfwKOzym8Y2LyxCAf9GGHZDvKm9Zha2NptudcRUnBQ7rZ5+G0aVzEpS4nJelwZMXt9myL3Bpskyq9FmUzQuZu2B63QCXcEH50ak3Jb4KF0i+p5D5r3aYeJeoRNCgwfq8BCv7q8F8L2Dw9u5HbcWateuj6IXi0V0HUrsCiBGweNBRzZbxVasXJYkhrll1ZtIDNnaPLl9w6snRlwSX+a34AgPPwSZzC+6wAAAAASUVORK5CYII=',
        'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.',
        1995,
        'Marlow Whaley',
        'Comedy|Drama',
        'Bulgaria',
        0059,
        'http://dummyimage.com/220x139.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Ninja',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKqSURBVDjLfVPRS1NhFP/du+suJLFN3VRcrQjZQxor7DECwSh6CHHgMgNB6kF871+IHtxeJTFiENFLVA/hy9yLYLWtLbSRFGbqbJtt624T57Z7O+fbEozqG+c7996d8/v9zjnfJxmGgf+tWCz2qFarjVerVYU8yAs7ODhg/1T6F0AikbBQwpzVavWq6jFUKAm6DhFNOTabFQsLr6H8LTkej1/l5I6Ojp7W1lasf90Gs+u6Ad3QCchAncAqlQqUZDJZqdfrZjIR9Fsm+3w+/6dk5HJ5AtIxdOWa+KZwstN5EoXCT8Fu8M9glYYwfiFOtNksePXyBc72nRfs/J9QwKicfG8uRmESJIn2xiY8W1HT8ODuRcH4PrYMVtt9/UZDAUtlVg60tbVDlmVIZHLT+JkBDL3B2HduQDwbzR7IrIDeCUCGyWQ6YnLT8+LmMWP2+DrmCwFRllBQbY5HkiWYFOWQXXgugXxjcg3G+U8PUS7WhAoBwBs3hEtgxhM2E7TUKtTKNroc7fjyLQ3VaEepvIf9/X2M1yeRKWWRiEcbTWQAuVmnVsjj848PGBrowejEbZTLZZzZ2oIRWsKb5SWMjY1BVVXs7OwgGo0ik8k0AFpaFNyf9CASiSCZNOHS4CBm/AF8XF1Fd3cX+vv7RZLf7xe+t9eNkZFhbGxsQCEZM+Fw6DIDLS4uOt1ut4PnefqUC5F3b+Hz+ejY2lAqlZDNZjE7O4tR3y3UqnuwWCw4che8Xu8zh8MxfGdqSnnyOEgXKQKFGsvHmReXxGOnGExPTyMYDNYPAQKBgF3TtAzL8ng86HE66VgB6XQaa2tronaXy4XOzk4GyW1ubsrhcPj74WWiEnI0iRjdvguhUAh2ux1ms1lMcHd3d4L8drFYfL6ystJCZaupVCpLim7+AjUfrZnK+fliAAAAAElFTkSuQmCC',
        'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.',
        2001,
        'Gaspard Kilkenny',
        'Action|Crime|Drama|Thriller',
        'Indonesia',
        0209,
        'http://dummyimage.com/246x163.jpg/dddddd/000000'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'In the Winter Dark',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFtSURBVBgZBcE9b01hAADg55x72mrdnqrE1SCkCUEivu7SxGKppGMHNhKj2KRisYkY2MTcRFQMGh8/QGLxMRikJklJkN5B0N72cu95z3uO50lqAAAAQAYACxP16KF8vhotvxSPNgfF/QFJDWBhOF7Yfyk9EXemRn73P359GJce1BkA1Y1918+MtxSiRmtrtjfzc9qtpAYvkmhl4/L4pNKGnglDfng6uLMt42WjOhD3xOGTzQ/acpVa0PDe5AgZ1eF4szxbNvvJlHeCTKEhOOUVsmfNeO/Y3G5D1q3giERUWreuQFqea81N+acvN2Pcqu0SYzpqAWm4Mu2XTV1bEm2raqmGQi0gDbsy3/X19fzV1PUHFKKAtPjWc1THJ109DAxUKkGlRFo8+azpuNNyBNEOlVrDmID06uOV5ddyuVFj3jioZa/crI5yjYzi/Nvl7nxbJXheN5O7SqUY4lpsk9Tg2sVwu+yUm+XS4iIA8B+6i5xffIyBpQAAAABJRU5ErkJggg==',
        'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.',
        2013,
        'Josiah Drever',
        'Drama',
        'Puerto Rico',
        0095,
        'http://dummyimage.com/109x115.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'In the House',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAALFSURBVDjLjZPfS1phGMeFXdef0bVXMeiiQS0hNeeCuuhKUFzKEnU/lDEKxZazaEop20Ub1QpaRhdrjFVgGY4RyEYuj80y7SfMNH9l/vzufV9mrO1mBx7Oc77n+X7e533OeXkAeH+Gz+dr8ng8Y8vLy/6lpaWfi4uLybm5udD09LTr7ZTr1t/1V8nm5mYdMTuJuRiLxZBIJJBOp5HL5ZBKpRAMbsM1bim9dJqnxhxD9dcAv80fd3d3Ua1Wkc/nQSHRaBTxeBzlchnV8gVKFyF4VmZgsz72Dj17Wn8FoCtTc7FYBL1KpRLoczgcxvn5OYMWLo5xmd1G5fIHPn14A1P//SkGIOabpO1KNptlhkwmwyBHR0fgOA5UL5dLyKU4FLJB1kWRhE57r/JAr27iEbPz4OAANEKhEDPRPVPQyckJywuXKQIIEGOM5GekwwK8Xi+USqWTx+fz8b9BZ0PByWQSe3t7kMlkXxkgEAhgZ2cHGxsbmJycZMX0fnh4yPSaRgcbiUSwv7+P09NT9PT0xBmAFtVMFEKDajW9dvd9j+BLIMyCix5D2tl19g9gYmICs7OzsNlsLNfr9VhfX0djYyMsQ1amWZ/bMP56BoKOTu7aFtbW1tDc3Ay73c5apJ+SahaLBb29veDIkKlGO6Q1QpH42z9D1Gg08G9tQSwWQygUQqFQwOFwwGg0slxEdGO/mUF0Ol2G/UikwElXGrSa2WoU4Oc+o63tNlZXV+H3+9k23G43BAIBLPZXDGAymfIMMDw8XGceNK08eqJHn6aPAR4a9GhtbSWQNkilUhY0b2lpgUQiiVMA+Q+SV4dpYGCgTqGUv5PelVZHX4xi3j2PhYUFuFwuaLVaGAwGllONnM7EyMhIkmwzeO1oNjQ03Oju7pKJRKK0XC6vqNSqqkqlIp/rzqFE2vFerVbnSOTJu2x7e3uEDJz/C4Myz4QSsAdYAAAAAElFTkSuQmCC',
        'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.',
        1996,
        'Irma Ralphs',
        'Comedy|Drama|Mystery|Thriller',
        'Indonesia',
        0902,
        'http://dummyimage.com/138x236.jpg/dddddd/000000'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'What''s Up, Tiger Lily?',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJfSURBVDjLpVNNiFJRFD6O4j8EMpoMTGU6LUbCMJAmmFzYQpjViIgkSNtoldDOzUCbCIJA2rlpNv4thiCY5dSmNJOiYhwRJ8nIMdT8/3nq7ZxH7/GaoE33cbjn3ne+737nnHtljDH4n6E4vZFMJg04RZB4C2cLznK0MtoLXD8JhUI/pPEyqQIEb2s0ml2n06kzGo2gVCr5/clkAo1GA/L5/KDf798Oh8MZEUQEZIlEwp3NZtlgMGAcx7HhcMja7TZrtVqs2+2y8XjMEMxisRgLBoNeAbdEJAjWa7XaXbvdDnK5HHq9HiABIBFMp1NAIDSbTcjlclCtVmGxWDwNBAJ6wi79FhJxOByrKpUKUAEFwHw+503w0+k0RKNR0Ol0YDAYqDb3RQIM8ppMJj5XCp7NZiIB+ZlMhurD+6VSCfR6Pcn3igS4cNHpo9FIBApGJwtgUnN4eAgUi75LbKPQCalsMjo5lUrx/4V9wRcwAkEOT9+gtlEaUrBARgD7nYsglylg+GlIsJy0Bvv1eh3UarUom8DSVOx3rWBZs8DKeTN8t/Gd2JfW4HGhUPhKLSuXy2LOvGz8Lt9bgwuWc2BdRhKTFZbNBhhutm+5H1xTijcxHo+7O53OQa1WA7wTUCwWoVKpgC28CiqTAs6eMYNt5RJM51M4/vYF8u/fjicT7uUfV9nv92/j+hn2WU/9ppqQClJWXT8Cz1UPT3Dw+hWcnDQ28g8/vJGdfo0+n8+AexF0tzDPdfRH6B+Pbvy84rl+E7g5B3vP9+Ddo4+yvx7Tv8bmjouhZODGdL05+Bw74gl+AetZvIbkaCwtAAAAAElFTkSuQmCC',
        'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.',
        2008,
        'Chucho Fleote',
        'Adventure|Comedy|Crime|Thriller',
        'Indonesia',
        0995,
        'http://dummyimage.com/163x130.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Alexander''s Ragtime Band',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAK8SURBVDjLbZFPbFRVFIe/897rdDpgKqKTDi6GtmOLg67cuGwixsSNoQujhLDSjYkLumhQg+BCTFgpCxeCJDZKQggxmrjQxoRgjG2thRaskkxptECYEmWG6fzpu+/c42LKaNWb3Jvf4n7fyTlHzIwDb55JPTm0YymKJH1p8WZh4ti+Kv9znnvx7d5dTwyUarVGa3FhdnDq69OxmBnAJsmPC78Vzhw/sEnyzOih3qHdg6V6o9FavDwzOPvtZzFARwCw/41PU8WBR5YwS09PLxa++HisCjDywsHewuOPlRr1ZuuXKzODly6cje8zmwQAe189kRoeypXUJz0/Tc0V4rjBUHG4VF9rNn/9ebYwf/Fc/M//YmaMj4+/A7x1X2ZmZLPZEEBV8d5TLpfVzDAzVJV6vf7uxMTEkWgDOFx46T3599DMQA28N3xTw5v3HE0FA+6e3ncYOBIAZDIZyW4RAvkvnKhxq+pYqToSL4QCAeCcE2hnzIx0BH1bhSj4G27FykolphZ7QhHCoA0EIqgqHYFzDqdtcFtaEGnDd9YSzLMBCwFCIEJgdAQRQBzHxB7YqJwSo9pSQBAxAmD46kn65z8iVS5R680x3Ubbr6riFLyBek/NeTKpAKdGEEBh/hRP/3GeXftfobt/N82Fb9hxcZLJPV2vBwBJkrCuRpwYa7Ghvt1nVwhmQt/MCYZH9pJeuoB88jKZ658zsHM7Jnaw00J93XAems5IFNQMNcHEeODu76T7+uH5sc6WoqM5Qi87I4Du7m4qk8dZXl7m2LVrjOXzOOcoFotcnZtjpGcrjctfseXL11hv3qYB1O6FaMitqLMF58jlcryfzfKoKqpKpVIhn89zo7bGlR++I7+9hyjsonYn4Xo5wPAfipkxOjpqq6ureO8718w25WcfavCUrPAwCX8S8n39QT6Yui1/AWOZi6sZoXAuAAAAAElFTkSuQmCC',
        'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.',
        1986,
        'Trstram Caltera',
        'Drama|Musical',
        'China',
        0787,
        'http://dummyimage.com/164x122.jpg/ff4444/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Message from Akira Kurosawa: For Beautiful Movies, A (Kurosawa Akira kara no messêji: Utsukushii eiga o)',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHlSURBVDjLpVPLShxBFD3T3WOUUUGYByhkI+50o6Bmo3ErAVG3Qvb5giyThets8gmC+DYQzEaGBMUnBhQRJAEXQuZJ8Mlodz28t6rbGY2b4IXqU1XcOvfc01UxrTWeEx5/ptbOssQzILVylVKQChCMkucagrA6JKTQtK+uJyc6Gg2B0npwvLfJ+Z/KH2Z+J+4VEJs5nFh4B3BLUhCrBILAzv1bmvvAbWD2rt9nCSRqCCIfCFtTdFjYoUVIwgQ0BJEc5UxmIGoJuGkTMeBPiQ4qq4R8MEpkhJSSyZhMPyQA/4XP33L6qhLoKGbW8wZnNwoG5zftennLYum8ot9+2uWpVRBQBTISc5tFsBmu62BxqwjPBb7sFNFQ52DlZwnxOOFeAe3pevihB07UArvguTGMv0rDo92x/jQoHyO9aZM43J2y2GNbEEJVCVgBt80Hv+5RJdLFFR0nZpAjwqXtQmh3LQGxcT9xkvymJ/WwIiEridajfVZB4oVXJeBbx+FSxdX98oOK2YMyAoV/lER/zrP9COsB0Q11JfH9sIzXnUn8IBwkfBzHp+dUrOYtGA+ohc6Xjcj9raA904CT/BXaWupM8lOhwssXXiR98XH6V7NPRHzDeEjyJTCPRzxJcHZ5kzdX77nP+Q6ZHT+VaotBJwAAAABJRU5ErkJggg==',
        'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',
        1992,
        'Lorita Lodovichi',
        'Documentary',
        'China',
        0134,
        'http://dummyimage.com/138x212.jpg/dddddd/000000'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Yongary: Monster from the Deep',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHHSURBVDjLjZPNSxtRFMX9WPk/VHBpoZRiJEtx0S5K20XFTVEKCq3g0hYXLhu6SjeFZJFNcSluxH03IiJocYINpgkYxEXSfDWTzMd7b2bs8d3XzviGRHTgMIt55zfnnpk7BGCIJK8HUgmp5B2akBqJfBogwTk3fd+/CoIAgySfI5PJfNUhOiBJZtu24ThOpG63i06ng3q9riC1Wg3ZbDaChOZhAtABxhiEEOpOsiwLpmmi0WgogOu6oJfkcrl/EB3gd/Pgf44VIISQodfrodls9o2kOtEBrLQGdrYSHZAjqbnDUVqtlkpSrVZvALz0bswuLMwaO0+/8eJ78NM34JU0vPYBAs+OQSgJ9dFut3XAck78WgUvf4B3kYY4/wR28hr2/hTYz/VYEhqHOiHQDaC4OMpP53Z5+aMEfJGAFNz8PFxjCYEvonE8z1O9EIQU68A8fvGY5V9CVFIQpQ3Ye4/gmYVYYZQiLJfSxADWj2fPmfEKzuETWPsPZfwExO/vyhSKEpDI3A84mnlrbE1uBrwFX4oVP4NfbveZdQ38jIN+Xz2FrtsAf2/bgwG6igD/IdOyIIce3Mcsz1pqezXAOEHusc6haPXHrwEWI98D8WYq8gAAAABJRU5ErkJggg==',
        'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.',
        1993,
        'Amble Arsey',
        'Children|Horror|Sci-Fi',
        'China',
        0380,
        'http://dummyimage.com/153x135.jpg/dddddd/000000'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Werewolf, The',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAH2SURBVDjLnZO9a1RBEMB/++5d1LxgPjQYkpxdLEVItFEU0mgay/wDCtfpvyBpIgommCoHqSy0s5Jgo2kEjRa2R/CrM0HzJd7lvZndsXiX8+VDFIddZncZfjOzM+PMjHq9biEEQgh47/Heo6ptXdwi0taTk5MuBvDeMzg4zOb2NphBvsAMA8ysfcaM3t4eFhefAdAGbG5tcevhK/5F7lfPk2XZb4CqtlzCcOU0XZ0dVPoTjh6J2RFDNCAevMHr5fdYMNI0BSACEJE8TMA5R2NH+bq5QyP1mIF6I9NAqrmNGXsjEBHCbnzO4ZzjR0MJltKTlInjElEwrAUIFg4CLOQIV4A0M08mgaSzg1IpInK5DwuHACik4JzLIYA5RyP1uMjydyDsTyHLMqJSBMCXz5/+WoVSXDoI6CjH3L15Du+NcrnM2uoqSddxzIyNjW8MnBqg2Wy2fj4cADxYWnp5pdBlfSLyYmho6IaqsrKysqCq4yKyXujKpwBut3xFmZmZua2q1y9eujze3d3Lk8ePmqp6Z3p6+t5+2z2Aubm5fhFZGxk5Q9+Jk3h1iCpJcoyPH+osL7/5OTs721UExMVLmqZjlUqFiYlrqCpmhpkRRRFjo2dZX/+eVKvVq/Pz888PjQBgamrqnYiM7p/C1mS+rdVqF/6Ywv/IL/azYiamBPboAAAAAElFTkSuQmCC',
        'In hac habitasse platea dictumst.',
        2005,
        'Annnora Kohrding',
        'Horror|Sci-Fi',
        'Portugal',
        0862,
        'http://dummyimage.com/102x212.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Mulan',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAIWSURBVDjLhZNPbxJRFMWhRrYu3NrExIUbdzWte6M7d34Eo2Hjxm8gwZUxIYEARUKAWgwbV0BpxAW11bpQFrCoCVEMDplhQMow782/enx3WsiU0jrJ2bz7zu+9e95cHwAfSXzXhFaEVv+j60JLM58HsGIYxsi27SPHcbBIoo5oNBrxQryAVTJPJhPouu6q0+mgVquh0WhAlmUX0uv1EIvFZpCp2U8A2sA5h2maYIyhUChA0zTU63UoiuICaJ0OSSaTx5B5AJnpqqVSCbmNTWxVt9FsNtHv98+05GYyD7AsC5VKBZvFd/j2k6Etc6gjHfLgELKiujeRJGkxQGSAYDCIx8+eI/ORIb3Lkf0sWvmio9aaoC2NoQ7+QFUHCwFr5XIZ8bfvhZFhq2XgU9tEb2Tj99DCgcTx9YeOg64GZTCGPQdYEnpaLBbxZl9HfIejo1rg5nGvti3CMyxouonhIYM8ZG7NBWSz2YepVKobiUR+UXjrwry+wzBm9qnAqD03YHohbsASUP+ly2u+XC7XzmQyt9LpdJc2xuscr0ULU9NUFC6JDiFRCy4gn88/EWqFw+EEmfL7HK8+8FOAqdmrWYjC7E8kElcCgcAdWmx2LbzY5mCmc+YWXp33H/w1LQehKhPPZuK8mTjR0QxwArktQtKpsLHHEarwC81ir+ZOrwewTBCiXr157/7d0PfqjQcvH10w1jT6y/8A/nHJHcAgm2AAAAAASUVORK5CYII=',
        'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.',
        1992,
        'Tedmund Jirik',
        'Adventure|Animation|Children|Comedy|Drama|Musical|Romance',
        'Finland',
        0828,
        'http://dummyimage.com/244x182.jpg/5fa2dd/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Diana',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHtSURBVDjLjZNLS9xQFMe138C9A/0OynyBUjeFQjduROi2MMtCEalS0ToLEdQMdEShoKDWRymKigWxII7PhaB9aBFUJjHJpHlnnvbfe27NJcVIDfwIyT3nd885cOoA1BHsaWQ0MZL/4SHjgciLCJpKpZJVrVava7Ua4mDnkCRpKCqJCpKU7HkefN8X2LYN0zShqiqXKIqCTCYjJGFyPQkooFgsolwu8zfhui4sy4KmaVwQBAHokmw2+1cSClpSUmr12MP7LQunii8klOA4DnRdv9USn0koePRiJDW+aTGBjcOLgAewlnjfYSuFQoFXIsvybQF9jG2avIKFPQtzOyZmcyZMtywkVAnNwzCMeMG7jV+YyFmQ1g30L2kYWitAWtZFJdQOzYREsYLhzwZGGF+OHez/9PD2k4aeeYUHVyoVPheSELGCwRUdA+zG/VMPeycu3iyo6J5WxDxIQFA1QtCauUwPrOpIPh/vSC+qSC/qPHn3u4uu2Su8nsrzZKqAoOR/BO2j+Q+DTPC0/2CdSu79qOLVlIyXk3l0zsjomJYxv6ELQYgQPOk7a2jpOnmcaG57tvuD3fzNxc5XB9sEm0XuyMb5VcCriBI7A/bz9117EMO1ENxImtmAfDq4TzKLdfn2RgQJktxjnUNo9RN/AFmTwlP7TY1uAAAAAElFTkSuQmCC',
        'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.',
        2011,
        'Dana Cominotti',
        'Drama|Romance',
        'Russia',
        0081,
        'http://dummyimage.com/127x235.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Banshee Chapter, The',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAMxSURBVDjLTZNdaBxlFIafmd3tTmYnJU26TYgNbZoQ7GIMBH9iNQj1QimIFCL+EVEQQa+VXBQKBfVGIlL0QtDeBFEwFSlN0EaqgkaQ2tYG89OYxiaN2d1ssplNZmfONzv7ebEx9sC5fB/e874cQ2uNN26YwGngJCBAf+qEFu4ab9xoBi4BAfBy6oSeAzCKX5MA3k20vfTinvbX7vEXP8vPrrrzX9nnK0D3jn5qoPycmWlrycSTTYbMvvMXMNBwUi8buS84ZR0ZfNM69HxraXF08/byXPz71guOk4yoS1QB8EMT5Xsczw6UDx99hlhU8sozw8tAn6kE07AOWcX50c35hTlnsu1Lp71e0ej7yK0NvPkNnJJHS/0erjYP26uLk1asqa9R1x11lHDEWPiE/tCwP103Ow/+0vGN3WbHSZYj7u9spGGvicZgw434bXaNsC5GauM893qjktienk7q0guG1pq3z118P9Zw+K2OZocG0Tx7vJ2i61LwfNpaWwCoaPh8fIGqo8nmVyl48fc+fuWRUybAaqX1waqG6pbivq4myhVNIpFg4rtvKbkuoQiXJn4g07UfN+/jm/twVfJRgDiA+F53RRm4UqWpqQ6JNCnb5s7SEhOXf2Lqj+s88eRT7Dtgs1bw0Q0JxPe6dwHK9/DKSfyYgUS13vLuFinHYXstR+fBVm7duEZ2ZYW0FIndWWd/GDaeOXP5d3MHMFXaKmPEqyxmy0SGCaZF7wN9xEyDTCZDV1cXxWwWQpdMJkNPTw8i0mvunPBjyXXZCIRfr+VIJCFlJXis/xhhGFKpVAjDEK/sI0pQSiEiiAg1B4F30V3/Z3pmaZ1cMce50Tlur2xiSIhSandFBN8PdsUiUsvg57NvXHn49eGzHanND6YWK/b6lpDN5YlVTQ7cJQ5EiELRSilDa/0/AODDV4/drK+vt/OFYnR69GZsxrAxYxZPp2uAMAwxq4qqjgyR2p8ppWqAsbGxNHAhnU7jbbvudvHvj6Kqfhzolr1mo4gQBAFBEGittRGGIVprlFIYWmtGRkYc4ArQDvQODg7++Z+zoaGhG0qp7p0wJy3LeqhQKMR3gr36LzexzEk6GOJQAAAAAElFTkSuQmCC',
        'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.',
        2010,
        'Orville Boal',
        'Horror|Thriller',
        'Albania',
        0142,
        'http://dummyimage.com/110x230.jpg/cc0000/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Lucky Star',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJcSURBVDjLpZPtT5JhFMafrW997I9rscA+FFu2QRurtlw5cQ4InLpwBogIPNFSiNJ4C+JVkj0QTBHQKFPQlJfwlanY1tXz3ARkn2jd27Wz++yc33XOvd0UAOp/RNGR/X5zeH9rOlTDVKAK3fsqJrxlqN27GHPuYHh+G4rXRQzZNjEws47Hli/oo/PxNsAU3qvWT3/gX3TPuHrWBhiC30nSktXDtKLB1NI4NKkxqBMqjDByPFkcxNBCPwbCfXgUeEBq705m0AZM+qsk2e3hau88W+4ANOy+XPLFQrkrcbW31KkOYJx9rBaAOzPR0gVHW6x593q9cDgcqB6e4sZoogMYdXzD0ck5ZhfLsHGKVfAqVoadKcMdzcLr82PuwwZCoRACgQCWVzdhoK2gaVpDAMNzWzhkAXamQpze/I4t13w+j2AwiFwuh7W1NXg8HmQyGSgUCshkssuU3F7AQf0c84kK3n68KFc4hXQ6DavVCqlUCqVSSdaIx+NQq9UGMsHg7Ab2jxtwp5rOvqUqia3CUqnEObWn0mp1KBaLcLlckMvloPpfrhOAl230/SGLxQK3241CoQC9Xg9nskKk1emQzWZZkBZCoRBU3/NP2GMBgXTTObjSjI1GA8lkEgzDwO/3E4iObXY6nYhEIhCJRHoWcIW6b1pF7egMlYNT7NROUKzU8XX3GJ+3D2E0GgmAm4Zbh2s0mUyIRqMcAGKx+BIlMeSiYu1K/fbEMm4+TaFnJIHrSgZX5TFIZNPo7e1Fj9QOs9kMlUqFaw9pCASCnzwe7x15xG6/rUQiAZ/Px9/5XyhZOMVGKlOdAAAAAElFTkSuQmCC',
        'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',
        1993,
        'Garry Haswell',
        'Drama|Romance',
        'China',
        0283,
        'http://dummyimage.com/150x245.jpg/5fa2dd/ffffff'
    );

INSERT INTO
    movies (
        title,
        thumbnail,
        description,
        year,
        publisher,
        category,
        country,
        duration,
        trailer
    )
VALUES
    (
        'Behind Enemy Lines II: Axis of Evil',
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAALeSURBVDjLY/j//z8DDKvNusuTturRzro9L95NO/b674RDr37W73z+Pmnxg9PypRcUkNXCMIaAcu9Nj7rjb24ee/rt/9HH3/47zry7Si7/vKZM5hlGggYodd5g1J9wc+KiKx8+Wk+5vSh367OLlp3XF8kknxbGphnDAIWGK4kbb37+pV13pV82+6xF1Y7nt90m3NwinX3JWrP51hzz3nsHTTrv7jZpvbPbrPXWQc3Sa8sQmqsuq5bsfHF15ul3b2TSzphJx5/UmXLw9Wv/KbcPSGdecFauuDnZZ97jz9kbX/zPXPPiv07pjXXisRfK4AYYtVydufn6pz/zTr77MOHAqxczDr5+e+Dmp/+xs+6eEfM6IKffcGt9wLxH/5x6795NXPbkv0T0+Wax8LNsDMAAYgEGUOySM+8++027s1cy9GikRODhYHG/g3lT97x4mzL77mXJhLMZMUue/rdtu3sZaKt7xNzH/2WizveCwwAYQHrZax5fmnTg1SuJoCOGMBeJeu5VT5px52LGrHsP3Cbff+824d5Lsajz1kBbgyJnPvyvmnhhGdiAjp3Pv087+Op/89ZnX5Jn3N4GEhRx32Mc3HPj5LJDb/5HT7r3P3HJk/9iEWdrwXIhp73Dp97/r518YQvWdICMgc6NiZ7/+H/yoif/U2fM/58zJf5/Wp///6hWj/82ucU3BL2OCOPWHH3ezLr+5mWv3rvffKvrTzeuTvy/5crU/xee7frfvzvrf3i/7n/jdJ15OA3QzL60JmHeo/9iwSebY9tdvm+8POH/xmuT/oNAz57U//170v+bZ0v9wNAIDCRj0dAzxe5tdz54tN35Kux3Itin2vD/titz/iODTZemAg2QxLTZvfPuJ9++u/99e+789+m4898o7eIxyxzp7927kv6370oAa27fmQB2gUW2/H+8gQjDQJtagns0/vfuSgHbDKJBfKB4D1EGQA3pAOJPIGdD6Q6QOADllJVJzH+HzQAAAABJRU5ErkJggg==',
        'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.',
        1990,
        'Nell Prator',
        'Action|Thriller|War',
        'Philippines',
        0876,
        'http://dummyimage.com/185x138.jpg/5fa2dd/ffffff'
    );

insert into
    actors (first_name, last_name)
values
    ('Laney', 'Rixon');

insert into
    actors (first_name, last_name)
values
    ('Tabatha', 'Barbe');

insert into
    actors (first_name, last_name)
values
    ('Lacey', 'Murcott');

insert into
    actors (first_name, last_name)
values
    ('Monah', 'MacKeever');

insert into
    actors (first_name, last_name)
values
    ('Obediah', 'Jeaneau');

insert into
    actors (first_name, last_name)
values
    ('Valdemar', 'Ottley');

insert into
    actors (first_name, last_name)
values
    ('Egan', 'Elloit');

insert into
    actors (first_name, last_name)
values
    ('Cesya', 'Mungin');

insert into
    actors (first_name, last_name)
values
    ('Ferdie', 'Wallsworth');

insert into
    actors (first_name, last_name)
values
    ('North', 'Pylkynyton');

insert into
    actors (first_name, last_name)
values
    ('Amalee', 'Fitzharris');

insert into
    actors (first_name, last_name)
values
    ('Lanni', 'Sloane');