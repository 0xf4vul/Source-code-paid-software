.class public final Lf/d/a/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field public static final a:Lf/d/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/w",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lf/d/a/w;

    invoke-direct {v0}, Lf/d/a/w;-><init>()V

    sput-object v0, Lf/d/a/w$a;->a:Lf/d/a/w;

    return-void
.end method
