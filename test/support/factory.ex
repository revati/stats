defmodule Stats.Factory do
  use ExMachina

  def source_factory do
    %Stats.Source{
      nth: 12,
      url: "http://www.saeima.lv/lv/transcripts/category/19",
      contents: nil
    }
  end

  def meeting_factory do
    source = source_factory()

    %Stats.Meeting{
      source: source,
      source_id: source.id,
      url: "http://www.saeima.lv/lv/transcripts/view/459",
      date: ~D[2018-01-11],
      contents: nil
    }
  end

  def pool_factory do
    meeting = meeting_factory

    %Stats.Pool{
      meeting: meeting,
      meeting_id: meeting.id,
      title:
        "Par lēmuma projekta Par atbildīgās komisijas maiņu likumprojektam “Grozījums Priekšvēlēšanu aģitācijas likumā” (1165/Lp12) (718/Lm12) iekļaušanu Saeimas sēdes darba kārtībā",
      url:
        "http://titania.saeima.lv/LIVS12/SaeimaLIVS2_DK.nsf/0/896B8B28CE7DE8DDC22582890078D9DD?OpenDocument",
      contents: nil
    }
  end

  def party_factory do
    %Stats.Party{title: "Saskaņa"}
  end

  def politician_factory do
    party = party_factory

    %Stats.Politician{name: "Saskaņa", party: party, party_id: party.id}
  end

  def vote_factory do
    pool = pool_factory
    politician = politician_factory
    party = politician.party

    %Stats.Vote{
      decision: "Par",
      party: party,
      party_id: party.id,
      politician: politician,
      politician_id: politician.id,
      pool: pool,
      pool_id: pool.id
    }
  end
end
