.class public final Lf/e/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/e/c;
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
        "Ljava/lang/Void;",
        "Lf/e",
        "<-TT;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf/c/b;


# direct methods
.method public constructor <init>(Lf/c/b;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lf/e/c$1;->a:Lf/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Lf/e;

    .line 1231
    iget-object v0, p0, Lf/e/c$1;->a:Lf/c/b;

    invoke-interface {v0, p2}, Lf/c/b;->call(Ljava/lang/Object;)V

    .line 228
    return-object p1
.end method
