.class final enum Lcom/avast/b/b$1;
.super Lcom/avast/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# instance fields
.field private final c:Lcom/avast/b/a;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0, v0}, Lcom/avast/b/b;-><init>(Ljava/lang/String;IB)V

    .line 11
    new-instance v0, Lcom/avast/b/a;

    invoke-direct {v0, p0}, Lcom/avast/b/a;-><init>(Lcom/avast/b/b;)V

    iput-object v0, p0, Lcom/avast/b/b$1;->c:Lcom/avast/b/a;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x14

    return v0
.end method

.method public final b()Ljavax/crypto/Mac;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/avast/b/h;->a()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/avast/b/a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avast/b/b$1;->c:Lcom/avast/b/a;

    return-object v0
.end method
