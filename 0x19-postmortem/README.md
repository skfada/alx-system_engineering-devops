## Postmortem: Web Stack Outage on January 18, 2024 - The Great Authentication Hustle

### Issue Summary:

#### Duration:
  - Start Time: January 18, 2024, 10:30 AM (UTC)
  - End Time: January 18, 2024, 2:45 PM (UTC)

<img src="https://t3.ftcdn.net/jpg/04/92/09/72/240_F_492097246_yagE8x9Uk8M9IekPy7GBuE0x1Uoa7esD.jpg" width="1000" height="300">

#### Impact:
  - The outage turned our authentication service into a recluse, locking users out of their accounts and causing a disturbance in the digital force.
  - User Experience: A no-entry sign was the theme of the day, affecting 30% of our users. Apologies for the involuntary digital detox!


### Timeline:

 #### Detection:
  - Like Batman responding to the Bat-Signal, our monitoring system pinged us at 10:30 AM with a distress signal - a sudden surge in failed logins.

 #### Actions Taken:
  - Went on a Sherlock Holmes mission into the authentication server logs, chasing the villain causing this authentication havoc.
  - Thought it was a DDoS attack, so we summoned the cybersecurity Avengers to analyze traffic patterns. Turns out, it was just our servers having a party and not inviting the authentication service.

 #### Misleading Paths:
  - We were all set to defend against a DDoS apocalypse, only to find out it was a tiny misconfiguration having a field day.
  - We spent quality time considering if our servers needed therapy for feeling overloaded. They assured us they were fine, just needed a little space.

 #### Escalation:
  - Called in the SRE team and Network Security team, our own version of the X-Men, to tackle the mischievous misconfiguration.

 #### Resolution:
  - Discovered that our authentication service was going through an identity crisis due to a recent configuration update.
  - Pressed the rewind button, reverting to a time when our authentication service knew who it was.
  - Implemented a hotfix, adding some digital therapy sessions to prevent identity crises in the future.


### Root Cause and Resolution:

 #### Root Cause:
  <img src="https://blog.systemsengineering.com/hs-fs/hubfs/blog-files/Root%20Cause.jpg?width=600&name=Root%20Cause.jpg" height="300" width="1000">

  - The authentication service suffered from an existential crisis brought on by a misconfiguration update – a classic case of an identity mix-up.

 #### Resolution:
  - Sent the service to a digital spa, reverting it to a more stable version.
  - Applied a hotfix, including some code therapy to help it cope with the challenges of being a service in the digital age.
  - Updated our monitoring system to send us a quick SOS if any other services decide to go through a rebellious phase.


### Corrective and Preventative Measures:

 #### Improvements/Fixes:
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh8wOXyFPhkBS9zuXzmGOtBDGGX4Nfz9ucWg&usqp=CAU" height="300" width="1000">

  - Upgraded our monitoring system to be the ultimate life coach for our services – detecting and alerting on any signs of an identity crisis.
  - Implemented a strict change control policy, ensuring services don't randomly change their personality without proper approval.
  - Scheduled a team-building retreat for our servers to strengthen their bonds and prevent any future digital tantrums.

 #### Tasks:
  - Task 1: Throw a post-mortem party, celebrating the triumph over the misconfiguration monster.
  - Task 2: Introduce a 'No Identity Crisis' policy for all services, with regular check-ins to ensure their digital well-being.
  - Task 3: Document the adventure in our digital chronicles to entertain future generations of techies.

There you have it - the epic tale of our authentication service's identity crisis. Remember, even servers need a little therapy now and then. Stay tuned for more tech sagas and may your servers always know who they are! 🚀✨
