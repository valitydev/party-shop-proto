include "base.thrift"

namespace java dev.vality.damsel.vortigon
namespace erlang vortigon

typedef string PartyId

struct CategoryFilter {
    1: optional string name
}

struct ShopFilter {
    1: optional string location_url
    2: optional CategoryFilter category_filter
}

struct PartyFilter {
    1: optional string contact_info_email
}

struct ContractFilter {
    1: optional string legal_agreement_signed_at
}

struct PartyFilterRequest {
    1: optional ShopFilter shop_filter
    2: optional PartyFilter party_filter
    3: optional ContractFilter contract_filter
}

enum PaymentInstitutionRealm{
    test
    live
}

/**
 * Сервис для получения информации о магазинах по party
 **/
service VortigonService {

    /**
     * Получение идентификаторов магазинов по party в разрезе тестовой или продовой среды
     **/
    list<base.ID> GetShopsIds(1: base.ID party_id, 2: PaymentInstitutionRealm realm)

    list<PartyId> findPartyIds(1: PartyFilterRequest request)

}
