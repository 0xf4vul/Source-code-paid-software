.class public final Lcom/piriform/ccleaner/storageanalyzer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/storageanalyzer/c;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field private final c:Lcom/piriform/ccleaner/storageanalyzer/a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/a;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/b;->a:Ljava/util/Set;

    .line 15
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/b;->c:Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 16
    return-void
.end method


# virtual methods
.method public final a()Lcom/piriform/ccleaner/storageanalyzer/f;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/f;->a:Lcom/piriform/ccleaner/storageanalyzer/f;

    return-object v0
.end method

.method public final a(Lcom/piriform/ccleaner/g/d;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/piriform/ccleaner/storageanalyzer/b;->b:J

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
