# Project MySQL One for All

This project was developed while I was studying SQL at Trybe Programming School.

Skills I needed for this project:

- Normalize non-normalized worksheets;
- Create queries to find the requested data;

Regular deadline: May 16, 2023 at 2:00 pm

<details>
  <summary><strong>🏗 Project structure</strong></summary><br />

In the challenges folder, there are files called desafioN.sql, each N equals the number of the challenge I performed.

</details>

<details>
  <summary><strong>🎲 SpotifyClone</strong></summary><br />

In the *SpotifyClone-Non-NormalizedTable.xlsx* file, you can see a spreadsheet with the initial tables.

**Note:** The actual Spotify database is much more complete and complex than the one shown below. This is just a database simulating the original.

As VS Code does not natively support opening spreadsheets, you need to have some specific software for this, here are some suggestions:

- LibreOffice Calc (Linux);
- Numbers (Mac OS);
- Google Sheets to use in the browser;
- Extension for VS Code as Excel Viewer;

After normalization, the database tables were created in the desafio1.sql file.

The desafio1.json configuration file has been adjusted to map which table and column contains the necessary information for Trybe's automated assessment.

</details>

<details>
  <summary><strong>🖥️ To access</strong></summary><br />

1 - Clone the repository:
`git@github.com:VicSales28/project-mysql-one-for-all.git`

2 - Enter the repository folder you just cloned.

You must be using node version 16 (or higher).

To check your version, use the command:
`nvm --version`

3 - Quick start with just one MySQL container:

```bash
npm install
docker run -p 3306:3306 --name mysql_8 -e MYSQL_ROOT_PASSWORD=password --platform=linux/amd64 -d mysql:8.0.23 mysqld --default-authentication-plugin=mysql_native_password
MYSQL_USER=root MYSQL_PASSWORD=password MYSQL_HOSTNAME=localhost npm test # roda todos os testes
MYSQL_USER=root MYSQL_PASSWORD=password MYSQL_HOSTNAME=localhost npm test -- -t "01" # rodando apenas o teste do requisito 01
```

or

🐳 Quickstart with Docker Compose

```bash
docker-compose up -d
docker exec -it one_for_all bash
npm test # roda todos os testes
npm test -- -t "01" # rodando apenas o teste do requisito 01
```

</details>

<details>
  <summary><strong>🗣 Feedbacks</strong></summary><br />
  
_Give me feedbacks, I'm open to new ideas_ 😉

</details>

