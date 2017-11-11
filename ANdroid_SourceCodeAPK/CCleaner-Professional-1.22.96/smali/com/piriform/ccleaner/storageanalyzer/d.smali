.class public final Lcom/piriform/ccleaner/storageanalyzer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/storageanalyzer/c;


# instance fields
.field public final a:Lcom/piriform/ccleaner/storageanalyzer/a;

.field public final b:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field private final e:Lcom/piriform/ccleaner/storageanalyzer/f;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/a;Lcom/piriform/ccleaner/storageanalyzer/f;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    sget-object v1, Lcom/piriform/ccleaner/g/d;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/d;->b:Ljava/util/SortedSet;

    .line 15
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/d;->b:Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/d;->c:Ljava/util/Set;

    .line 19
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/d;->a:Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 20
    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/d;->e:Lcom/piriform/ccleaner/storageanalyzer/f;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Lcom/piriform/ccleaner/storageanalyzer/f;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/d;->e:Lcom/piriform/ccleaner/storageanalyzer/f;

    return-object v0
.end method

.method public final a(Lcom/piriform/ccleaner/g/d;)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/d;->b:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 59
    iget-wide v0, p0, Lcom/piriform/ccleaner/storageanalyzer/d;->d:J

    .line 1124
    iget-wide v2, p1, Lcom/piriform/ccleaner/g/d;->f:J

    .line 59
    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/piriform/ccleaner/storageanalyzer/d;->d:J

    .line 60
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/piriform/ccleaner/storageanalyzer/d;->d:J

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/d;->b:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    return v0
.end method
