.class final Lf/g/c$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/f",
        "<",
        "Lf/b;",
        "Lf/b$a;",
        "Lf/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    check-cast p2, Lf/b$a;

    .line 1142
    invoke-static {}, Lf/g/f;->a()Lf/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lf/g/f;->e()Lf/g/a;

    invoke-static {p2}, Lf/g/a;->b(Lf/b$a;)Lf/b$a;

    move-result-object v0

    .line 139
    return-object v0
.end method
