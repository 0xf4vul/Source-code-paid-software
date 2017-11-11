.class public final Lcom/piriform/ccleaner/i/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/i/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Lcom/a/a/a/a;

.field private j:Landroid/content/ServiceConnection;

.field private final k:Lcom/piriform/ccleaner/i/f;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/piriform/ccleaner/i/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "yCd9ynS9zDheE/uIS0YDYyqiK8WohZgrTwS/d4VLHy5V8EevaJaZMQcy8rqbjDPrPKjqSxMcHCXm/OrmLlAudxb6Q+p1C7sINgK0menMVcTCAavnpYvbIxGMNiq3o+tpw8dtJi44/ChAFxzQzCoU2AEQACKgCBIIMA8QACOAAFEQAB0w9GikhqkgBNAjIBIIM"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "BAQADIQEzn1L3A8duIJGGFSElB51Afq8OLPG9t3weA3tngha1/oY3Fzt6zawcCUnoaqZuDgFPDHmyy5WZYSxdyj3We2Lk0V72tv7qX9++0FdZbhkWlW8lIy0gPdoY6glTsU2uHwbCFsrC6r67Kc26YahVpNun5sMMyY/EmOoGu2jZxNqFp6D0lflkfNMvbhTGIUUgnH"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10993
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    sput-object v0, Lcom/piriform/ccleaner/i/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/piriform/ccleaner/i/j;->g:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/piriform/ccleaner/i/f;

    invoke-direct {v0}, Lcom/piriform/ccleaner/i/f;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/i/j;->k:Lcom/piriform/ccleaner/i/f;

    .line 129
    iput-object p1, p0, Lcom/piriform/ccleaner/i/j;->h:Landroid/content/Context;

    .line 131
    return-void
.end method

.method private static a(Landroid/os/Bundle;)I
    .locals 3

    .prologue
    .line 772
    const-string/jumbo v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 773
    if-nez v0, :cond_0

    .line 775
    const/4 v0, 0x0

    .line 783
    :goto_0
    return v0

    .line 776
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 777
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 778
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 779
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 781
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected type for bundle response code."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 783
    const/16 v0, -0x63

    goto :goto_0
.end method

.method private a(Lcom/piriform/ccleaner/i/g;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/o;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Package name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/piriform/ccleaner/i/j;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    const/4 v0, 0x0

    move v3, v6

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/piriform/ccleaner/i/j;->i:Lcom/a/a/a/a;

    const/4 v2, 0x3

    iget-object v5, p0, Lcom/piriform/ccleaner/i/j;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5, p2, v0}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 820
    invoke-static {v7}, Lcom/piriform/ccleaner/i/j;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 822
    if-eqz v0, :cond_2

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getPurchases() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/piriform/ccleaner/i/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v0

    .line 862
    :cond_1
    :goto_0
    return v6

    .line 3866
    :cond_2
    const-string/jumbo v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "INAPP_PURCHASE_DATA_LIST"

    .line 3867
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "INAPP_DATA_SIGNATURE_LIST"

    .line 3868
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v4

    .line 826
    :goto_1
    if-eqz v0, :cond_5

    .line 827
    const-string/jumbo v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 828
    const/16 v6, -0x3ea

    goto :goto_0

    :cond_4
    move v0, v6

    .line 3868
    goto :goto_1

    .line 831
    :cond_5
    const-string/jumbo v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 832
    const-string/jumbo v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 833
    const-string/jumbo v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    move v5, v6

    .line 835
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    .line 836
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 837
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 838
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/piriform/ccleaner/i/m;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/i/m;

    move-result-object v2

    .line 839
    sget-object v11, Lcom/piriform/ccleaner/i/j;->a:Ljava/lang/String;

    invoke-static {v11, v0, v1}, Lcom/piriform/ccleaner/i/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Sku is owned: "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 841
    invoke-static {p2, v0}, Lcom/piriform/ccleaner/i/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/piriform/ccleaner/i/k;

    move-result-object v0

    .line 4056
    iget-object v1, v0, Lcom/piriform/ccleaner/i/k;->c:Ljava/lang/String;

    .line 843
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 844
    const-string/jumbo v1, "BUG: empty/null token!"

    invoke-static {v1}, Lcom/piriform/ccleaner/i/j;->c(Ljava/lang/String;)V

    .line 4105
    :cond_6
    iget-object v1, p1, Lcom/piriform/ccleaner/i/g;->b:Ljava/util/Map;

    .line 5052
    iget-object v2, v0, Lcom/piriform/ccleaner/i/k;->a:Lcom/piriform/ccleaner/i/m;

    .line 4105
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 835
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v3, v0

    goto :goto_2

    .line 851
    :cond_7
    const-string/jumbo v0, "Purchase signature verification **FAILED**. Not adding item."

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->c(Ljava/lang/String;)V

    move v0, v4

    .line 854
    goto :goto_3

    .line 858
    :cond_8
    const-string/jumbo v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    if-eqz v3, :cond_1

    const/16 v6, -0x3eb

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/piriform/ccleaner/i/g;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/piriform/ccleaner/i/g;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/gson/o;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 873
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 874
    invoke-virtual {p2, p1}, Lcom/piriform/ccleaner/i/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 883
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 916
    :goto_0
    return v0

    .line 889
    :cond_0
    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 891
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 892
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 893
    const-string/jumbo v4, "ITEM_ID_LIST"

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 894
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j;->i:Lcom/a/a/a/a;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/piriform/ccleaner/i/j;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5, p1, v3}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 896
    const-string/jumbo v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 897
    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 898
    if-nez v0, :cond_2

    .line 899
    const-string/jumbo v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 900
    const/16 v0, -0x3ea

    goto :goto_0

    .line 902
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getSkuDetails() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/piriform/ccleaner/i/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 907
    :cond_3
    const-string/jumbo v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 909
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 910
    invoke-static {p1, v0}, Lcom/piriform/ccleaner/i/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/piriform/ccleaner/i/n;

    move-result-object v0

    .line 911
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Got sku details: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5101
    iget-object v4, p2, Lcom/piriform/ccleaner/i/g;->a:Ljava/util/Map;

    .line 6053
    iget-object v5, v0, Lcom/piriform/ccleaner/i/n;->a:Lcom/piriform/ccleaner/i/m;

    .line 5101
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move v0, v1

    .line 916
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/i/j;Lcom/a/a/a/a;)Lcom/a/a/a/a;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/piriform/ccleaner/i/j;->i:Lcom/a/a/a/a;

    return-object p1
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 920
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 922
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v2, v0, 0x14

    .line 923
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v3, v0, 0x14

    .line 924
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 925
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 926
    mul-int/lit8 v5, v0, 0x14

    mul-int/lit8 v6, v0, 0x14

    add-int/lit8 v6, v6, 0x14

    invoke-interface {p0, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 927
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 929
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 931
    :cond_1
    if-eqz v3, :cond_3

    .line 932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 933
    mul-int/lit8 v4, v2, 0x14

    mul-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v3

    invoke-interface {p0, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 934
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 936
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_3
    return-object v1
.end method

.method static synthetic a(ILcom/piriform/ccleaner/i/i;)V
    .locals 1

    .prologue
    .line 10239
    const-string/jumbo v0, "Error checking for billing v3 support."

    invoke-static {p1, p0, v0}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/i;ILjava/lang/String;)V

    .line 75
    return-void
.end method

.method private static a(Lcom/piriform/ccleaner/i/h;Lcom/piriform/ccleaner/i/c;)V
    .locals 0

    .prologue
    .line 455
    if-eqz p0, :cond_0

    .line 456
    invoke-interface {p0, p1}, Lcom/piriform/ccleaner/i/h;->a(Lcom/piriform/ccleaner/i/c;)V

    .line 458
    :cond_0
    return-void
.end method

.method private static a(Lcom/piriform/ccleaner/i/i;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 259
    if-eqz p0, :cond_0

    .line 260
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    invoke-direct {v0, p1, p2}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/piriform/ccleaner/i/i;->a(Lcom/piriform/ccleaner/i/c;)V

    .line 262
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/piriform/ccleaner/i/j;->b:Z

    if-nez v0, :cond_0

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/i/j;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/piriform/ccleaner/i/j;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/i/j;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/piriform/ccleaner/i/j;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/piriform/ccleaner/i/j;)Lcom/a/a/a/a;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j;->i:Lcom/a/a/a/a;

    return-object v0
.end method

.method private static b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/i/m;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 942
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 943
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/i/m;

    .line 944
    invoke-virtual {v0}, Lcom/piriform/ccleaner/i/m;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 946
    :cond_0
    return-object v1
.end method

.method static b()V
    .locals 0

    .prologue
    .line 1000
    return-void
.end method

.method static synthetic b(Lcom/piriform/ccleaner/i/i;)V
    .locals 2

    .prologue
    .line 10243
    const/16 v0, -0x3e9

    const-string/jumbo v1, "RemoteException while setting up in-app billing."

    invoke-static {p0, v0, v1}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/i;ILjava/lang/String;)V

    .line 75
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1003
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "In-app billing error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->e([Ljava/lang/Object;)V

    .line 1004
    return-void
.end method

.method static synthetic b(Lcom/piriform/ccleaner/i/j;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/piriform/ccleaner/i/j;->e:Z

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/piriform/ccleaner/i/j;->c:Z

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/piriform/ccleaner/i/i;)V
    .locals 2

    .prologue
    .line 10247
    const/4 v0, 0x0

    const-string/jumbo v1, "Setup successful."

    invoke-static {p0, v0, v1}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/i;ILjava/lang/String;)V

    .line 75
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1007
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "In-app billing warning: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->d([Ljava/lang/Object;)V

    .line 1008
    return-void
.end method

.method static synthetic c(Lcom/piriform/ccleaner/i/j;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/piriform/ccleaner/i/j;->e:Z

    return v0
.end method

.method private d()Lcom/piriform/ccleaner/i/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/piriform/ccleaner/i/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/piriform/ccleaner/i/b;
        }
    .end annotation

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/piriform/ccleaner/i/j;->c()V

    .line 603
    const-string/jumbo v0, "queryInventory"

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/i/j;->a(Ljava/lang/String;)V

    .line 605
    :try_start_0
    new-instance v0, Lcom/piriform/ccleaner/i/g;

    invoke-direct {v0}, Lcom/piriform/ccleaner/i/g;-><init>()V

    .line 606
    const-string/jumbo v1, "inapp"

    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/g;Ljava/lang/String;)I

    move-result v1

    .line 607
    if-eqz v1, :cond_0

    .line 608
    new-instance v0, Lcom/piriform/ccleaner/i/b;

    const-string/jumbo v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/i/b;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/o; {:try_start_0 .. :try_end_0} :catch_1

    .line 634
    :catch_0
    move-exception v0

    .line 635
    new-instance v1, Lcom/piriform/ccleaner/i/b;

    const/16 v2, -0x3e9

    const-string/jumbo v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/piriform/ccleaner/i/b;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 612
    :cond_0
    :try_start_1
    const-string/jumbo v1, "inapp"

    invoke-direct {p0, v1, v0}, Lcom/piriform/ccleaner/i/j;->a(Ljava/lang/String;Lcom/piriform/ccleaner/i/g;)I

    move-result v1

    .line 613
    if-eqz v1, :cond_1

    .line 614
    new-instance v0, Lcom/piriform/ccleaner/i/b;

    const-string/jumbo v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/i/b;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/o; {:try_start_1 .. :try_end_1} :catch_1

    .line 636
    :catch_1
    move-exception v0

    .line 637
    new-instance v1, Lcom/piriform/ccleaner/i/b;

    const/16 v2, -0x3ea

    const-string/jumbo v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/piriform/ccleaner/i/b;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 619
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/piriform/ccleaner/i/j;->d:Z

    if-eqz v1, :cond_3

    .line 620
    const-string/jumbo v1, "subs"

    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/g;Ljava/lang/String;)I

    move-result v1

    .line 621
    if-eqz v1, :cond_2

    .line 622
    new-instance v0, Lcom/piriform/ccleaner/i/b;

    const-string/jumbo v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/i/b;-><init>(ILjava/lang/String;)V

    throw v0

    .line 626
    :cond_2
    const-string/jumbo v1, "subs"

    invoke-direct {p0, v1, v0}, Lcom/piriform/ccleaner/i/j;->a(Ljava/lang/String;Lcom/piriform/ccleaner/i/g;)I

    move-result v1

    .line 627
    if-eqz v1, :cond_3

    .line 628
    new-instance v0, Lcom/piriform/ccleaner/i/b;

    const-string/jumbo v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/i/b;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/o; {:try_start_2 .. :try_end_2} :catch_1

    .line 633
    :cond_3
    return-object v0
.end method

.method static synthetic d(Lcom/piriform/ccleaner/i/j;)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/i/j;->b:Z

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/piriform/ccleaner/i/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/piriform/ccleaner/i/j;->g:Ljava/lang/String;

    .line 806
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/i/j;->f:Z

    .line 807
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/piriform/ccleaner/i/i;)Lcom/piriform/ccleaner/i/d;
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    .line 6142
    invoke-direct {p0}, Lcom/piriform/ccleaner/i/j;->c()V

    .line 6229
    iget-boolean v2, p0, Lcom/piriform/ccleaner/i/j;->b:Z

    .line 6143
    if-eqz v2, :cond_1

    .line 6247
    const-string/jumbo v1, "Setup successful."

    invoke-static {p1, v0, v1}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/i;ILjava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-object p0

    .line 6150
    :cond_1
    new-instance v2, Lcom/piriform/ccleaner/i/j$1;

    invoke-direct {v2, p0, p1}, Lcom/piriform/ccleaner/i/j$1;-><init>(Lcom/piriform/ccleaner/i/j;Lcom/piriform/ccleaner/i/i;)V

    iput-object v2, p0, Lcom/piriform/ccleaner/i/j;->j:Landroid/content/ServiceConnection;

    .line 7233
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7234
    const-string/jumbo v3, "com.android.vending"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7265
    iget-object v3, p0, Lcom/piriform/ccleaner/i/j;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 7266
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v1

    .line 6214
    :cond_3
    if-eqz v0, :cond_4

    .line 8251
    const-string/jumbo v0, "Billing service unavailable on device."

    invoke-static {p1, v4, v0}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/i;ILjava/lang/String;)V

    goto :goto_0

    .line 6217
    :cond_4
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j;->j:Landroid/content/ServiceConnection;

    .line 8270
    iget-object v3, p0, Lcom/piriform/ccleaner/i/j;->h:Landroid/content/Context;

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 8271
    if-nez v0, :cond_0

    .line 9255
    const-string/jumbo v0, "Failure trying to bind to the Billing service."

    invoke-static {p1, v4, v0}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/i;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Lcom/piriform/ccleaner/i/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/piriform/ccleaner/i/b;
        }
    .end annotation

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/piriform/ccleaner/i/j;->d()Lcom/piriform/ccleaner/i/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/piriform/ccleaner/i/m;Lcom/piriform/ccleaner/i/h;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/piriform/ccleaner/i/m;",
            "Lcom/piriform/ccleaner/i/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 334
    const-string/jumbo v5, "dp"

    .line 1345
    const-string/jumbo v4, "inapp"

    .line 1395
    invoke-direct {p0}, Lcom/piriform/ccleaner/i/j;->c()V

    .line 1396
    const-string/jumbo v0, "launchPurchaseFlow"

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/i/j;->a(Ljava/lang/String;)V

    .line 1397
    const-string/jumbo v0, "launchPurchaseFlow"

    .line 1792
    iget-boolean v1, p0, Lcom/piriform/ccleaner/i/j;->f:Z

    if-eqz v1, :cond_0

    .line 1793
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t start async operation ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") because another async operation("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") is in progress."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1798
    :cond_0
    iput-object v0, p0, Lcom/piriform/ccleaner/i/j;->g:Ljava/lang/String;

    .line 1799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/i/j;->f:Z

    .line 1399
    const-string/jumbo v0, "subs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/piriform/ccleaner/i/j;->d:Z

    if-nez v0, :cond_1

    .line 1400
    invoke-direct {p0}, Lcom/piriform/ccleaner/i/j;->e()V

    .line 1401
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    const/16 v1, -0x3f1

    const-string/jumbo v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    invoke-static {p3, v0}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/h;Lcom/piriform/ccleaner/i/c;)V

    .line 1451
    :goto_0
    return-void

    .line 1406
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Constructing buy intent for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j;->i:Lcom/a/a/a/a;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/piriform/ccleaner/i/m;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1425
    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->a(Landroid/os/Bundle;)I

    move-result v1

    .line 1426
    if-eqz v1, :cond_2

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to buy item, Error response: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/piriform/ccleaner/i/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 1428
    invoke-direct {p0}, Lcom/piriform/ccleaner/i/j;->e()V

    .line 1429
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    const-string/jumbo v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    invoke-static {p3, v0}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/h;Lcom/piriform/ccleaner/i/c;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 1442
    invoke-direct {p0}, Lcom/piriform/ccleaner/i/j;->e()V

    .line 1444
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    const/16 v1, -0x3ec

    const-string/jumbo v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    invoke-static {p3, v0}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/h;Lcom/piriform/ccleaner/i/c;)V

    goto :goto_0

    .line 1433
    :cond_2
    :try_start_1
    const-string/jumbo v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Request code: 10001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    const/16 v1, 0x2711

    iput v1, p0, Lcom/piriform/ccleaner/i/j;->l:I

    .line 1436
    iput-object p3, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    .line 1437
    iput-object v4, p0, Lcom/piriform/ccleaner/i/j;->m:Ljava/lang/String;

    .line 1438
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x2711

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1445
    :catch_1
    move-exception v0

    .line 1446
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1448
    invoke-direct {p0}, Lcom/piriform/ccleaner/i/j;->e()V

    .line 1450
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    const/16 v1, -0x3e9

    const-string/jumbo v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    invoke-static {p3, v0}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/h;Lcom/piriform/ccleaner/i/c;)V

    goto/16 :goto_0
.end method

.method public final a(IILandroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/16 v6, -0x3ea

    const/4 v1, 0x1

    .line 476
    iget v2, p0, Lcom/piriform/ccleaner/i/j;->l:I

    if-eq p1, v2, :cond_0

    .line 576
    :goto_0
    return v0

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/piriform/ccleaner/i/j;->c()V

    .line 481
    const-string/jumbo v2, "handleActivityResult"

    invoke-direct {p0, v2}, Lcom/piriform/ccleaner/i/j;->a(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lcom/piriform/ccleaner/i/j;->e()V

    .line 486
    if-nez p3, :cond_2

    .line 487
    const-string/jumbo v0, "Null data in IAB activity result."

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 488
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    const-string/jumbo v2, "Null data in IAB result"

    invoke-direct {v0, v6, v2}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    if-eqz v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/i/h;->a(Lcom/piriform/ccleaner/i/c;)V

    :cond_1
    move v0, v1

    .line 492
    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_4

    .line 496
    const-string/jumbo v0, "Null extras\'s in IAB activity result. Only seen once (old playstore version)"

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 497
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    const-string/jumbo v2, "Null data in IAB result Only seen once (old playstore version)"

    invoke-direct {v0, v6, v2}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    if-eqz v2, :cond_3

    .line 499
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/i/h;->a(Lcom/piriform/ccleaner/i/c;)V

    :cond_3
    move v0, v1

    .line 501
    goto :goto_0

    .line 2788
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/piriform/ccleaner/i/j;->a(Landroid/os/Bundle;)I

    move-result v2

    .line 505
    const-string/jumbo v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 506
    const-string/jumbo v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 508
    if-ne p2, v5, :cond_c

    if-nez v2, :cond_c

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Extras: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Expected item type: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/piriform/ccleaner/i/j;->m:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    if-eqz v3, :cond_5

    if-nez v4, :cond_7

    .line 516
    :cond_5
    const-string/jumbo v0, "BUG: either purchaseData or dataSignature is null."

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Extras: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    const/16 v2, -0x3f0

    const-string/jumbo v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    if-eqz v2, :cond_6

    .line 520
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/i/h;->a(Lcom/piriform/ccleaner/i/c;)V

    :cond_6
    move v0, v1

    .line 522
    goto/16 :goto_0

    .line 527
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/piriform/ccleaner/i/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/piriform/ccleaner/i/k;

    move-result-object v2

    .line 3052
    iget-object v2, v2, Lcom/piriform/ccleaner/i/k;->a:Lcom/piriform/ccleaner/i/m;

    .line 531
    sget-object v5, Lcom/piriform/ccleaner/i/j;->a:Ljava/lang/String;

    invoke-static {v5, v3, v4}, Lcom/piriform/ccleaner/i/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Purchase signature verification FAILED for sku "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 533
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Signature verification failed for sku "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    .line 534
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    if-eqz v2, :cond_8

    .line 535
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/i/h;->a(Lcom/piriform/ccleaner/i/c;)V
    :try_end_0
    .catch Lcom/google/gson/o; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    move v0, v1

    .line 537
    goto/16 :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    const-string/jumbo v2, "Failed to parse purchase data."

    invoke-static {v2}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0}, Lcom/google/gson/o;->printStackTrace()V

    .line 543
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    const-string/jumbo v2, "Failed to parse purchase data."

    invoke-direct {v0, v6, v2}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    .line 544
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    if-eqz v2, :cond_9

    .line 545
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/i/h;->a(Lcom/piriform/ccleaner/i/c;)V

    :cond_9
    move v0, v1

    .line 547
    goto/16 :goto_0

    .line 550
    :cond_a
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    if-eqz v2, :cond_b

    .line 551
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    new-instance v3, Lcom/piriform/ccleaner/i/c;

    const-string/jumbo v4, "Success"

    invoke-direct {v3, v0, v4}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/piriform/ccleaner/i/h;->a(Lcom/piriform/ccleaner/i/c;)V

    :cond_b
    :goto_1
    move v0, v1

    .line 576
    goto/16 :goto_0

    .line 553
    :cond_c
    if-ne p2, v5, :cond_d

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/piriform/ccleaner/i/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    if-eqz v0, :cond_b

    .line 557
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    const-string/jumbo v3, "Problem purchasing item."

    invoke-direct {v0, v2, v3}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    .line 558
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/i/h;->a(Lcom/piriform/ccleaner/i/c;)V

    goto :goto_1

    .line 560
    :cond_d
    if-nez p2, :cond_e

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Purchase canceled - Response: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/piriform/ccleaner/i/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    const-string/jumbo v3, "Flow cancelled for some reason."

    invoke-direct {v0, v2, v3}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    if-eqz v2, :cond_b

    .line 564
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/i/h;->a(Lcom/piriform/ccleaner/i/c;)V

    goto :goto_1

    .line 567
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Purchase failed. Result code: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ". Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 569
    invoke-static {v2}, Lcom/piriform/ccleaner/i/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Ljava/lang/String;)V

    .line 571
    new-instance v0, Lcom/piriform/ccleaner/i/c;

    const/16 v2, -0x3ee

    const-string/jumbo v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lcom/piriform/ccleaner/i/c;-><init>(ILjava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    if-eqz v2, :cond_b

    .line 573
    iget-object v2, p0, Lcom/piriform/ccleaner/i/j;->n:Lcom/piriform/ccleaner/i/h;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/i/h;->a(Lcom/piriform/ccleaner/i/c;)V

    goto/16 :goto_1
.end method
