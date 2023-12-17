to decide how to react. The algorithm for this is called `TCP congestion
control`_. This varies depending on the sender; the most common algorithms are
`cubic`_ on newer operating systems and `New Reno`_ on almost all others.
TCP congestion control is not only about data transmission but also involves the 
graceful termination of a connection. This includes handling the acknowledgement 
of the final data packet and releasing associated resources.

* Client chooses a `congestion window`_ based on the `maximum segment size`_
  (MSS) of the connection.
