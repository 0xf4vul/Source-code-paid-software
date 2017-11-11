.class final Lcom/airbnb/lottie/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:F

.field private final c:Lcom/airbnb/lottie/av;

.field private final d:Lcom/airbnb/lottie/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/k$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;FLcom/airbnb/lottie/av;Lcom/airbnb/lottie/k$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "F",
            "Lcom/airbnb/lottie/av;",
            "Lcom/airbnb/lottie/k$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/l;->a:Lorg/json/JSONObject;

    .line 20
    iput p2, p0, Lcom/airbnb/lottie/l;->b:F

    .line 21
    iput-object p3, p0, Lcom/airbnb/lottie/l;->c:Lcom/airbnb/lottie/av;

    .line 22
    iput-object p4, p0, Lcom/airbnb/lottie/l;->d:Lcom/airbnb/lottie/k$a;

    .line 23
    return-void
.end method

.method static a(Lorg/json/JSONObject;FLcom/airbnb/lottie/av;Lcom/airbnb/lottie/k$a;)Lcom/airbnb/lottie/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "F",
            "Lcom/airbnb/lottie/av;",
            "Lcom/airbnb/lottie/k$a",
            "<TT;>;)",
            "Lcom/airbnb/lottie/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/airbnb/lottie/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/airbnb/lottie/l;-><init>(Lorg/json/JSONObject;FLcom/airbnb/lottie/av;Lcom/airbnb/lottie/k$a;)V

    return-object v0
.end method


# virtual methods
.method final a()Lcom/airbnb/lottie/l$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/l$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 31
    .line 1037
    iget-object v0, p0, Lcom/airbnb/lottie/l;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 1038
    iget-object v0, p0, Lcom/airbnb/lottie/l;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "k"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1062
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1065
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 1066
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1039
    :goto_0
    if-eqz v0, :cond_2

    .line 1040
    check-cast v1, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/airbnb/lottie/l;->c:Lcom/airbnb/lottie/av;

    iget v5, p0, Lcom/airbnb/lottie/l;->b:F

    iget-object v6, p0, Lcom/airbnb/lottie/l;->d:Lcom/airbnb/lottie/k$a;

    .line 1148
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 1149
    if-eqz v7, :cond_3

    .line 1152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 1153
    :goto_1
    if-ge v2, v7, :cond_1

    .line 1154
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, v4, v5, v6}, Lcom/airbnb/lottie/as$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/av;FLcom/airbnb/lottie/k$a;)Lcom/airbnb/lottie/as;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    .line 1066
    goto :goto_0

    .line 1158
    :cond_1
    invoke-static {v0}, Lcom/airbnb/lottie/as;->a(Ljava/util/List;)V

    move-object v1, v0

    .line 2050
    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/l;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 2051
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2052
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/as;

    iget-object v0, v0, Lcom/airbnb/lottie/as;->a:Ljava/lang/Object;

    .line 33
    :goto_3
    new-instance v2, Lcom/airbnb/lottie/l$a;

    invoke-direct {v2, v1, v0}, Lcom/airbnb/lottie/l$a;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    return-object v2

    .line 1042
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 1045
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 2054
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/l;->d:Lcom/airbnb/lottie/k$a;

    iget-object v2, p0, Lcom/airbnb/lottie/l;->a:Lorg/json/JSONObject;

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/airbnb/lottie/l;->b:F

    invoke-interface {v0, v2, v3}, Lcom/airbnb/lottie/k$a;->a(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 2057
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method
