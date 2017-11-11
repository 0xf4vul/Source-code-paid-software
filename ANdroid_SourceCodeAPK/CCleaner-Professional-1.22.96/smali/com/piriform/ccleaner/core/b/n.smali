.class final Lcom/piriform/ccleaner/core/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/core/b/n$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/StringBuilder;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/core/b/n;->a:Ljava/lang/StringBuilder;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/core/b/n;->b:Ljava/util/List;

    .line 39
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 72
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    return-void
.end method


# virtual methods
.method public final a()Lcom/piriform/ccleaner/core/b/m;
    .locals 4

    .prologue
    .line 99
    new-instance v1, Lcom/piriform/ccleaner/core/b/m;

    iget-object v0, p0, Lcom/piriform/ccleaner/core/b/n;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/piriform/ccleaner/core/b/n;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/piriform/ccleaner/core/b/n;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/piriform/ccleaner/core/b/m;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final a(Lcom/piriform/ccleaner/core/b/h;)V
    .locals 6

    .prologue
    .line 42
    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2018
    iget-object v1, p1, Lcom/piriform/ccleaner/core/b/h;->a:Lcom/piriform/ccleaner/core/a;

    .line 1054
    sget-object v2, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    if-eq v1, v2, :cond_0

    .line 1055
    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    const-string/jumbo v1, " < ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    :cond_0
    iget-object v1, p1, Lcom/piriform/ccleaner/core/b/h;->b:Lcom/piriform/ccleaner/core/data/h;

    .line 1059
    sget-object v2, Lcom/piriform/ccleaner/core/data/h;->a:Lcom/piriform/ccleaner/core/data/h;

    if-eq v1, v2, :cond_2

    .line 1060
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1061
    sget-object v1, Lcom/piriform/ccleaner/core/b/n$a;->a:Lcom/piriform/ccleaner/core/b/n$a;

    .line 2029
    iget-object v1, v1, Lcom/piriform/ccleaner/core/b/n$a;->c:Ljava/lang/String;

    .line 1061
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    :cond_1
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    const-string/jumbo v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/piriform/ccleaner/core/b/n;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 44
    iget-object v1, p0, Lcom/piriform/ccleaner/core/b/n;->a:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/piriform/ccleaner/core/b/n;->a(Ljava/lang/StringBuilder;)V

    .line 45
    invoke-static {v0}, Lcom/piriform/ccleaner/core/b/n;->a(Ljava/lang/StringBuilder;)V

    .line 46
    iget-object v1, p0, Lcom/piriform/ccleaner/core/b/n;->a:Ljava/lang/StringBuilder;

    sget-object v2, Lcom/piriform/ccleaner/core/b/n$a;->b:Lcom/piriform/ccleaner/core/b/n$a;

    .line 3029
    iget-object v2, v2, Lcom/piriform/ccleaner/core/b/n$a;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_3
    iget-object v1, p0, Lcom/piriform/ccleaner/core/b/n;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v0, p0, Lcom/piriform/ccleaner/core/b/n;->b:Ljava/util/List;

    .line 3076
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4018
    iget-object v2, p1, Lcom/piriform/ccleaner/core/b/h;->a:Lcom/piriform/ccleaner/core/a;

    .line 3077
    sget-object v3, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    if-eq v2, v3, :cond_4

    .line 3078
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 5018
    iget-object v3, p1, Lcom/piriform/ccleaner/core/b/h;->a:Lcom/piriform/ccleaner/core/a;

    .line 3078
    invoke-static {v2, v3}, Lcom/piriform/ccleaner/core/l;->a(Ljava/util/Calendar;Lcom/piriform/ccleaner/core/a;)Ljava/util/Calendar;

    move-result-object v2

    .line 3079
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 3080
    iget-object v3, p0, Lcom/piriform/ccleaner/core/b/n;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5022
    :cond_4
    iget-object v2, p1, Lcom/piriform/ccleaner/core/b/h;->b:Lcom/piriform/ccleaner/core/data/h;

    .line 3083
    sget-object v3, Lcom/piriform/ccleaner/core/data/h;->a:Lcom/piriform/ccleaner/core/data/h;

    if-eq v2, v3, :cond_5

    .line 3084
    iget-object v2, p0, Lcom/piriform/ccleaner/core/b/n;->b:Ljava/util/List;

    .line 6022
    iget-object v3, p1, Lcom/piriform/ccleaner/core/b/h;->b:Lcom/piriform/ccleaner/core/data/h;

    .line 6026
    iget v3, v3, Lcom/piriform/ccleaner/core/data/h;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3084
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    return-void
.end method
