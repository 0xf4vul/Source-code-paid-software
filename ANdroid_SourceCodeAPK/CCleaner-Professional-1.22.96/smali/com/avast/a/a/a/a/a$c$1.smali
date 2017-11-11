.class final Lcom/avast/a/a/a/a/a$c$1;
.super Lcom/google/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/a/a/a/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b",
        "<",
        "Lcom/avast/a/a/a/a/a$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/d;Lcom/google/a/f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 1097
    new-instance v0, Lcom/avast/a/a/a/a/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/avast/a/a/a/a/a$c;-><init>(Lcom/google/a/d;Lcom/google/a/f;B)V

    .line 92
    return-object v0
.end method
