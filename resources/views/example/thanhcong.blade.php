<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../css/flipclock.css">

		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script type="text/javascript" src="../js/timer.js"></script>
		<script src="../js/flipclock.js"></script>
	</head>	
	<body>
	<div class="col">
		<div class="clock" style="margin:2em;"></div>
	</div>
	
	<div class="message"></div>
	<div> <p id="countdown"></p></div>

	<script type="text/javascript">
		var clock;
		
		$(document).ready(function() {
			var clock;

			clock = $('.clock').FlipClock({
		        clockFace: 'DailyCounter',
		        autoStart: false,
		        callbacks: {
		        	stop: function() {
		        		$('.message').html('The clock has stopped!')
		        	}
		        }
		    });
				    
		    clock.setTime(220880);
		    clock.setCountdown(true);
		    clock.start();

		});
	</script>
	
	</body>
</html>
