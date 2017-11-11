.class final Lcom/piriform/ccleaner/storageanalyzer/backend/c$8;
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
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/s/l;",
        ">;",
        "Lf/d",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$8;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 155
    check-cast p1, Ljava/util/List;

    .line 1158
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$8;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->b(Lcom/piriform/ccleaner/storageanalyzer/backend/c;Ljava/util/List;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$8;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    .line 1159
    invoke-static {v1}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->a(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Lf/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    .line 1161
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$8;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-static {v1}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->b(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Lcom/piriform/ccleaner/m/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/piriform/ccleaner/m/k;->c()V

    .line 1162
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$8;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-static {v1}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->b(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Lcom/piriform/ccleaner/m/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/piriform/ccleaner/m/k;->b()Lf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$8;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    .line 1163
    invoke-static {v2}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->a(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Lf/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v1

    .line 1164
    invoke-static {}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->c()Lcom/piriform/ccleaner/core/data/AndroidPackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/d;->b(Ljava/lang/Object;)Lf/d;

    move-result-object v1

    .line 1166
    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$8;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-static {v2}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->c(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Lf/c/f;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lf/d;->a(Lf/d;Lf/d;Lf/c/f;)Lf/d;

    move-result-object v0

    .line 155
    return-object v0
.end method
