.class final Lcom/piriform/ccleaner/CCleanerApplication$1;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/CCleanerApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Lcom/piriform/ccleaner/professional/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/CCleanerApplication;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/CCleanerApplication;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/piriform/ccleaner/CCleanerApplication$1;->a:Lcom/piriform/ccleaner/CCleanerApplication;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 97
    check-cast p1, Lcom/piriform/ccleaner/professional/m;

    .line 1100
    iget-object v0, p0, Lcom/piriform/ccleaner/CCleanerApplication$1;->a:Lcom/piriform/ccleaner/CCleanerApplication;

    iget-object v0, v0, Lcom/piriform/ccleaner/CCleanerApplication;->f:Lcom/piriform/ccleaner/b/a;

    invoke-virtual {p1}, Lcom/piriform/ccleaner/professional/m;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Ljava/lang/String;)V

    .line 97
    return-void
.end method
