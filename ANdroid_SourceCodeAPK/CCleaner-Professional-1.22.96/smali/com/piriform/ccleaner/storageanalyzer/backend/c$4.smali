.class final Lcom/piriform/ccleaner/storageanalyzer/backend/c$4;
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
        "Lcom/piriform/ccleaner/g/d;",
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
    .line 271
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$4;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 271
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/a;

    check-cast p2, Lcom/piriform/ccleaner/g/d;

    .line 2048
    invoke-static {p2}, Lcom/piriform/ccleaner/storageanalyzer/f;->a(Lcom/piriform/ccleaner/g/d;)Lcom/piriform/ccleaner/storageanalyzer/f;

    move-result-object v0

    .line 2049
    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/storageanalyzer/a;->b(Lcom/piriform/ccleaner/storageanalyzer/f;)Lcom/piriform/ccleaner/storageanalyzer/c;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/d;

    .line 2052
    iget-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/d;->b:Ljava/util/SortedSet;

    invoke-interface {v1, p2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 2053
    iget-wide v2, v0, Lcom/piriform/ccleaner/storageanalyzer/d;->d:J

    .line 2124
    iget-wide v4, p2, Lcom/piriform/ccleaner/g/d;->f:J

    .line 2053
    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/piriform/ccleaner/storageanalyzer/d;->d:J

    .line 271
    return-object p1
.end method
