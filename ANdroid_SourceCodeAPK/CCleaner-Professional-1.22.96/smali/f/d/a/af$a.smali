.class public final Lf/d/a/af$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field public static final a:Lf/d/a/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/af",
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
    .line 44
    new-instance v0, Lf/d/a/af;

    invoke-direct {v0}, Lf/d/a/af;-><init>()V

    sput-object v0, Lf/d/a/af$a;->a:Lf/d/a/af;

    return-void
.end method
