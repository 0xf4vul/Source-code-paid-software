.class public final enum Lf/d/d/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lf/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lf/d/d/b;",
        ">;",
        "Lf/j;"
    }
.end annotation


# static fields
.field public static final enum a:Lf/d/d/b;

.field private static final synthetic b:[Lf/d/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lf/d/d/b;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1}, Lf/d/d/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/d/d/b;->a:Lf/d/d/b;

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Lf/d/d/b;

    const/4 v1, 0x0

    sget-object v2, Lf/d/d/b;->a:Lf/d/d/b;

    aput-object v2, v0, v1

    sput-object v0, Lf/d/d/b;->b:[Lf/d/d/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf/d/d/b;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lf/d/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lf/d/d/b;

    return-object v0
.end method

.method public static values()[Lf/d/d/b;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lf/d/d/b;->b:[Lf/d/d/b;

    invoke-virtual {v0}, [Lf/d/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/d/d/b;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
