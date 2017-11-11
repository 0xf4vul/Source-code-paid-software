.class public final Lf/d/a/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field public static final a:Lf/d/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lf/d/a/x;

    invoke-direct {v0}, Lf/d/a/x;-><init>()V

    sput-object v0, Lf/d/a/x$a;->a:Lf/d/a/x;

    return-void
.end method
