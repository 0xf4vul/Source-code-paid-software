.class public final Lf/d/c/e;
.super Lf/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/c/e$a;
    }
.end annotation


# static fields
.field public static final b:Lf/d/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lf/d/c/e;

    invoke-direct {v0}, Lf/d/c/e;-><init>()V

    sput-object v0, Lf/d/c/e;->b:Lf/d/c/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lf/g;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public final a()Lf/g$a;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lf/d/c/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf/d/c/e$a;-><init>(Lf/d/c/e;B)V

    return-object v0
.end method
