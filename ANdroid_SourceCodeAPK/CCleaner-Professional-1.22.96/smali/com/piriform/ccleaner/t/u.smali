.class public final Lcom/piriform/ccleaner/t/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/t/u$a;,
        Lcom/piriform/ccleaner/t/u$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/t/x$b;",
            "Lcom/piriform/ccleaner/t/x;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/t/x$b;",
            "Lcom/piriform/ccleaner/t/x;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/piriform/ccleaner/t/x;

.field public d:Lcom/piriform/ccleaner/t/u$b;

.field public final e:Ljava/util/UUID;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/piriform/ccleaner/t/u$a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/t/u$b;Lcom/piriform/ccleaner/t/u$a;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/t/u;->a:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/t/u;->b:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/t/u;->f:Ljava/util/Map;

    .line 92
    iput-object p1, p0, Lcom/piriform/ccleaner/t/u;->d:Lcom/piriform/ccleaner/t/u$b;

    .line 93
    iput-object p2, p0, Lcom/piriform/ccleaner/t/u;->g:Lcom/piriform/ccleaner/t/u$a;

    .line 94
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/t/u;->e:Ljava/util/UUID;

    .line 95
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/piriform/ccleaner/t/u;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/x;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/piriform/ccleaner/t/u;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/piriform/ccleaner/t/u;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final a(Lcom/piriform/ccleaner/t/x;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/piriform/ccleaner/t/u;->a:Ljava/util/Map;

    .line 1162
    iget-object v1, p1, Lcom/piriform/ccleaner/t/x;->b:Lcom/piriform/ccleaner/t/x$b;

    .line 108
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/piriform/ccleaner/t/u;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public final b(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/piriform/ccleaner/t/u;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/x;

    return-object v0
.end method

.method public final b(Lcom/piriform/ccleaner/t/x;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/piriform/ccleaner/t/u;->b:Ljava/util/Map;

    .line 2162
    iget-object v1, p1, Lcom/piriform/ccleaner/t/x;->b:Lcom/piriform/ccleaner/t/x$b;

    .line 112
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method
