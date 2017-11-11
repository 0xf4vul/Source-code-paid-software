.class public final Lcom/piriform/ccleaner/storageanalyzer/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/piriform/ccleaner/storageanalyzer/a;


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/storageanalyzer/f;",
            "Lcom/piriform/ccleaner/storageanalyzer/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/storageanalyzer/a;-><init>()V

    .line 15
    sput-object v0, Lcom/piriform/ccleaner/storageanalyzer/a;->a:Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 2088
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/piriform/ccleaner/storageanalyzer/a;->c:Z

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/piriform/ccleaner/storageanalyzer/c;
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/piriform/ccleaner/storageanalyzer/a;->a()I

    move-result v0

    .line 28
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Requested position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " items."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 33
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/c;

    return-object v0
.end method

.method public final a(Lcom/piriform/ccleaner/storageanalyzer/f;)Lcom/piriform/ccleaner/storageanalyzer/c;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/c;

    return-object v0
.end method

.method public final b()J
    .locals 5

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    .line 41
    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/a;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/c;

    .line 42
    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/c;->b()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-wide v2
.end method

.method public final b(Lcom/piriform/ccleaner/storageanalyzer/f;)Lcom/piriform/ccleaner/storageanalyzer/c;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/c;

    .line 93
    if-nez v0, :cond_0

    .line 1101
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/f;->a:Lcom/piriform/ccleaner/storageanalyzer/f;

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/b;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/b;-><init>(Lcom/piriform/ccleaner/storageanalyzer/a;)V

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    return-object v0

    .line 1101
    :cond_1
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/d;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/storageanalyzer/d;-><init>(Lcom/piriform/ccleaner/storageanalyzer/a;Lcom/piriform/ccleaner/storageanalyzer/f;)V

    goto :goto_0
.end method
