.class final Lcom/piriform/ccleaner/ui/activity/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/d;


# instance fields
.field private final a:Lcom/piriform/ccleaner/b/c/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/b/c/a;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/e;->a:Lcom/piriform/ccleaner/b/c/a;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/e;->a:Lcom/piriform/ccleaner/b/c/a;

    .line 2141
    iget-object v0, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->W:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 24
    return-void
.end method

.method public final a(Lcom/facebook/ads/a;Lcom/facebook/ads/c;)V
    .locals 7

    .prologue
    .line 18
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/e;->a:Lcom/piriform/ccleaner/b/c/a;

    invoke-interface {p1}, Lcom/facebook/ads/a;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    .line 1000
    iget v4, p2, Lcom/facebook/ads/c;->i:I

    .line 2000
    iget-object v2, p2, Lcom/facebook/ads/c;->j:Ljava/lang/String;

    .line 2134
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2135
    const-string/jumbo v3, "placement_id"

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    const-string/jumbo v1, "error_message"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2137
    iget-object v1, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v2, Lcom/piriform/ccleaner/b/b;->X:Lcom/piriform/ccleaner/b/b;

    const-string/jumbo v3, "error_code"

    int-to-long v4, v4

    invoke-interface/range {v1 .. v6}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;JLjava/util/Map;)V

    .line 19
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/e;->a:Lcom/piriform/ccleaner/b/c/a;

    .line 2145
    iget-object v0, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->Y:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 29
    return-void
.end method
