.class public final Lcom/piriform/ccleaner/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/a/h;",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/a/g;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/a/a/d;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/piriform/ccleaner/a/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    return-object v0
.end method
