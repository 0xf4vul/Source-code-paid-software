.class final Lcom/piriform/ccleaner/settings/analysis/f$1;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/settings/analysis/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Lcom/piriform/ccleaner/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/settings/analysis/f;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/settings/analysis/f;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/f$1;->a:Lcom/piriform/ccleaner/settings/analysis/f;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 24
    check-cast p1, Lcom/piriform/ccleaner/l/c;

    .line 1027
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/f$1;->a:Lcom/piriform/ccleaner/settings/analysis/f;

    new-instance v1, Lcom/piriform/ccleaner/l/b;

    invoke-direct {v1, p1}, Lcom/piriform/ccleaner/l/b;-><init>(Lcom/piriform/ccleaner/l/c;)V

    .line 2009
    iput-object v1, v0, Lcom/piriform/ccleaner/settings/analysis/f;->a:Lcom/piriform/ccleaner/l/b;

    .line 24
    return-void
.end method
