.class public final Lcom/piriform/ccleaner/s/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/s/r;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, "SECONDARY_STORAGE"

    .line 1017
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/piriform/ccleaner/s/m;->a:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/s/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    iget-object v1, p0, Lcom/piriform/ccleaner/s/m;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18
    new-instance v1, Lcom/piriform/ccleaner/s/l;

    iget-object v2, p0, Lcom/piriform/ccleaner/s/m;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/s/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    return-object v0
.end method
