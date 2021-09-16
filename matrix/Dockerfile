FROM matrixdotorg/synapse

#RUN /start.py generate

#RUN /usr/local/bin/register_new_matrix_user -u robot -p cg55v2ccsp0457qhkx05o08guxkhgwzabszxxa14tj4bncojevdxwa8c2nm5jaxp -c homeserver.yaml http://localhost:8008

#ENTRYPOINT ["/bin/sh", "-c" , "/start.py"]
ENTRYPOINT ["/bin/sh", "-c" , "/start.py generate && /start.py"]
