.class final Lcom/piriform/ccleaner/storageanalyzer/backend/c$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/backend/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/f",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/a;",
        "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
        "Lcom/piriform/ccleaner/storageanalyzer/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$9;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 173
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/a;

    check-cast p2, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 1176
    if-eqz p2, :cond_0

    .line 2079
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/f;->a:Lcom/piriform/ccleaner/storageanalyzer/f;

    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/storageanalyzer/a;->b(Lcom/piriform/ccleaner/storageanalyzer/f;)Lcom/piriform/ccleaner/storageanalyzer/c;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/b;

    .line 3049
    iget-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/b;->a:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 3050
    if-eqz v1, :cond_0

    .line 3051
    iget-wide v2, v0, Lcom/piriform/ccleaner/storageanalyzer/b;->b:J

    invoke-virtual {p2}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/piriform/ccleaner/storageanalyzer/b;->b:J

    .line 173
    :cond_0
    return-object p1
.end method
