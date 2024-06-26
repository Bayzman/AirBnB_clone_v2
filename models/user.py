#!/usr/bin/python3
"""Defines the User class."""
from models.base_model import Base
from models.base_model import BaseModel
from sqlalchemy import Column
from sqlalchemy import String
from sqlalchemy.orm import relationship


class User(BaseModel, Base):

    """Represents a user in Mysql database.
    Inherits from sqlalchemy Base and links to the Mysql table  users.

    Arttributes:
        __tablesname__ (str): the name of the mysqltable to store users.
        email: (sqlalchemy String): user's email address.
        password (sqlalchemy String): user's password.
        first_name (sqlalchemy String): users' first name.
        last_name (sqlalchemy String): user's last_name.
        places(sqlalchemy relationship): user place relationship.
        reviews (sqlalchemy relationship): user reciew relationship
    """

    __tablename__ = "users"
    email = Column(String(128), nullable=False)
    password = Column(String(128), nullable=False)
    first_name = Column(String(128))
    last_name = Column(String(128))
    places = relationship("Place", backref="user", cascade="delete")
    reviews = relationship("Review", backref="user", cascade="delete")
