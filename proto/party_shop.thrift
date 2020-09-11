include "base.thrift"

namespace java com.rbkmoney.damsel.party_shop
namespace erlang party_shop

/**
 * Сервис для получения информации о магазинах по party
 **/
service PartyShopService {

    /**
     * Получение идентификаторов магазинов по party в разрезе тестовой или продовой среды
     **/
    list<base.ID> GetShopsIds(1: base.ID party_id, 2: bool is_test)

}