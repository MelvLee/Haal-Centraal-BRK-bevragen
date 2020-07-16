# coding: utf-8

"""
    Kadaster - BRK-Bevragen API

    D.m.v. deze toepassing worden meerdere, korte bevragingen op de Basis Registratie Kadaster beschikbaar gesteld. Deze toepassing betreft het verstrekken van Kadastrale Onroerende Zaak informatie.  # noqa: E501

    The version of the OpenAPI document: 1.1.0
    Generated by: https://openapi-generator.tech
"""


import pprint
import re  # noqa: F401

import six

from openapi_client.configuration import Configuration


class KadasterNatuurlijkPersoonAllOf(object):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    """
    Attributes:
      openapi_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    openapi_types = {
        'geheimhouding_persoonsgegevens': 'bool',
        'land_waarnaar_vertrokken': 'Waardelijst',
        'geslachtsaanduiding': 'GeslachtEnum',
        'heeft_partnerschap': 'list[HeeftPartnerschap]',
        'naam': 'Naam',
        'geboorte': 'Geboorte',
        'overlijden': 'Overlijden'
    }

    attribute_map = {
        'geheimhouding_persoonsgegevens': 'geheimhoudingPersoonsgegevens',
        'land_waarnaar_vertrokken': 'landWaarnaarVertrokken',
        'geslachtsaanduiding': 'geslachtsaanduiding',
        'heeft_partnerschap': 'heeftPartnerschap',
        'naam': 'naam',
        'geboorte': 'geboorte',
        'overlijden': 'overlijden'
    }

    def __init__(self, geheimhouding_persoonsgegevens=None, land_waarnaar_vertrokken=None, geslachtsaanduiding=None, heeft_partnerschap=None, naam=None, geboorte=None, overlijden=None, local_vars_configuration=None):  # noqa: E501
        """KadasterNatuurlijkPersoonAllOf - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._geheimhouding_persoonsgegevens = None
        self._land_waarnaar_vertrokken = None
        self._geslachtsaanduiding = None
        self._heeft_partnerschap = None
        self._naam = None
        self._geboorte = None
        self._overlijden = None
        self.discriminator = None

        if geheimhouding_persoonsgegevens is not None:
            self.geheimhouding_persoonsgegevens = geheimhouding_persoonsgegevens
        if land_waarnaar_vertrokken is not None:
            self.land_waarnaar_vertrokken = land_waarnaar_vertrokken
        if geslachtsaanduiding is not None:
            self.geslachtsaanduiding = geslachtsaanduiding
        if heeft_partnerschap is not None:
            self.heeft_partnerschap = heeft_partnerschap
        if naam is not None:
            self.naam = naam
        if geboorte is not None:
            self.geboorte = geboorte
        if overlijden is not None:
            self.overlijden = overlijden

    @property
    def geheimhouding_persoonsgegevens(self):
        """Gets the geheimhouding_persoonsgegevens of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501

        Aanduiding die aangeeft dat gegevens van een persoon wel of niet verstrekt mogen worden.  # noqa: E501

        :return: The geheimhouding_persoonsgegevens of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :rtype: bool
        """
        return self._geheimhouding_persoonsgegevens

    @geheimhouding_persoonsgegevens.setter
    def geheimhouding_persoonsgegevens(self, geheimhouding_persoonsgegevens):
        """Sets the geheimhouding_persoonsgegevens of this KadasterNatuurlijkPersoonAllOf.

        Aanduiding die aangeeft dat gegevens van een persoon wel of niet verstrekt mogen worden.  # noqa: E501

        :param geheimhouding_persoonsgegevens: The geheimhouding_persoonsgegevens of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :type: bool
        """

        self._geheimhouding_persoonsgegevens = geheimhouding_persoonsgegevens

    @property
    def land_waarnaar_vertrokken(self):
        """Gets the land_waarnaar_vertrokken of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501


        :return: The land_waarnaar_vertrokken of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :rtype: Waardelijst
        """
        return self._land_waarnaar_vertrokken

    @land_waarnaar_vertrokken.setter
    def land_waarnaar_vertrokken(self, land_waarnaar_vertrokken):
        """Sets the land_waarnaar_vertrokken of this KadasterNatuurlijkPersoonAllOf.


        :param land_waarnaar_vertrokken: The land_waarnaar_vertrokken of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :type: Waardelijst
        """

        self._land_waarnaar_vertrokken = land_waarnaar_vertrokken

    @property
    def geslachtsaanduiding(self):
        """Gets the geslachtsaanduiding of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501


        :return: The geslachtsaanduiding of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :rtype: GeslachtEnum
        """
        return self._geslachtsaanduiding

    @geslachtsaanduiding.setter
    def geslachtsaanduiding(self, geslachtsaanduiding):
        """Sets the geslachtsaanduiding of this KadasterNatuurlijkPersoonAllOf.


        :param geslachtsaanduiding: The geslachtsaanduiding of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :type: GeslachtEnum
        """

        self._geslachtsaanduiding = geslachtsaanduiding

    @property
    def heeft_partnerschap(self):
        """Gets the heeft_partnerschap of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501


        :return: The heeft_partnerschap of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :rtype: list[HeeftPartnerschap]
        """
        return self._heeft_partnerschap

    @heeft_partnerschap.setter
    def heeft_partnerschap(self, heeft_partnerschap):
        """Sets the heeft_partnerschap of this KadasterNatuurlijkPersoonAllOf.


        :param heeft_partnerschap: The heeft_partnerschap of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :type: list[HeeftPartnerschap]
        """

        self._heeft_partnerschap = heeft_partnerschap

    @property
    def naam(self):
        """Gets the naam of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501


        :return: The naam of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :rtype: Naam
        """
        return self._naam

    @naam.setter
    def naam(self, naam):
        """Sets the naam of this KadasterNatuurlijkPersoonAllOf.


        :param naam: The naam of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :type: Naam
        """

        self._naam = naam

    @property
    def geboorte(self):
        """Gets the geboorte of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501


        :return: The geboorte of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :rtype: Geboorte
        """
        return self._geboorte

    @geboorte.setter
    def geboorte(self, geboorte):
        """Sets the geboorte of this KadasterNatuurlijkPersoonAllOf.


        :param geboorte: The geboorte of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :type: Geboorte
        """

        self._geboorte = geboorte

    @property
    def overlijden(self):
        """Gets the overlijden of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501


        :return: The overlijden of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :rtype: Overlijden
        """
        return self._overlijden

    @overlijden.setter
    def overlijden(self, overlijden):
        """Sets the overlijden of this KadasterNatuurlijkPersoonAllOf.


        :param overlijden: The overlijden of this KadasterNatuurlijkPersoonAllOf.  # noqa: E501
        :type: Overlijden
        """

        self._overlijden = overlijden

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, KadasterNatuurlijkPersoonAllOf):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KadasterNatuurlijkPersoonAllOf):
            return True

        return self.to_dict() != other.to_dict()
