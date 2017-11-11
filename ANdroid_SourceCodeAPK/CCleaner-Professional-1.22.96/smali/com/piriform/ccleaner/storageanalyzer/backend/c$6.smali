.class final Lcom/piriform/ccleaner/storageanalyzer/backend/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


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
        "Lf/c/e",
        "<",
        "Lcom/piriform/ccleaner/core/a/p",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/a;",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/g/d;",
        ">;>;",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/g/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$6;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    check-cast p1, Lcom/piriform/ccleaner/core/a/p;

    .line 2018
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/p;->b:Ljava/lang/Object;

    .line 1111
    check-cast v0, Ljava/util/List;

    .line 108
    return-object v0
.end method
