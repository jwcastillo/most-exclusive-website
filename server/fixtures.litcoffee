# Fixtures

The app must be initialized with a queueMeta, that is the meta info about a
queue. Eventually it may be interesting to extend the app to house many queues,
but for now we'll keep it simple and only ever have 1 queue.

    if QueueMeta.find().count() is 0
      queueMeta =
        currentlyServingTicketNumber: 1
        averageWaitTimeSeconds: 0
        hasCurrentConnectionPosted: no
        timeCurrentTicketExpires: moment.utc().toDate()
        totalWaitTimeSeconds: 0
        totalVisitors: 0
        nextTicketNumber: 1

      QueueMeta.insert queueMeta
