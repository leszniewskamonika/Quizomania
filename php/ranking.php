

<div class="main-banner-register">

    <section class="about-us">
        <div class="about-us__text">
            <h3 class="about-us__header" style="color: white">Ranking</h3>

            <?php
            include "class/User.php";
            include "class/DBConnection.php";
            include "../style/nawigacja_admin.php";
            include "class/Ranking.php";

            
            $user = new User();
            if (!empty($_SESSION['id'])) {
                $uid = $_SESSION['id'];

            }

            $ranking = new Ranking();
            $infoRanking = $ranking->rankingInfo();
            $procentUser = [];
            foreach ($infoRanking as $n =>$row) {
                $id_user = $row['id_user'];
                $user->setID($id_user);
                $username = $user->getUserInfo();
                $username = $username["login"];

                $points = $row["points"];
                $max_points = $row["max_points"];
                $procentUser = $ranking->convertToProcent($id_user);
                $position = $n + 1;
                echo "<p style='color: white'>{$position}. {$username} - {$points} punktów na {$max_points}. Celność {$procentUser}</p>";

            }
            ?>
        </div>
    </section>
  </div>  
<footer class="footer">
    <a href="#" class="footer__logo-link">
        <img src="../images/tytul.svg" alt="Logo" class="footer__logo-image">
    </a>
</footer>
</body>
</html>